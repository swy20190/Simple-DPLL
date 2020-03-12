//
// Created by swy on 2020/3/2.
//
//
// DPLL algorithm.
//

#include "DPLL.h"

bool DPLL::check_sat() {
    // TODO: your code here, or in the header file
    std::unordered_map<int,int> atomStatus;//记录节点状态0，1，2
    int clause_num = phi.clauses.size();//子句数量
    int atomNum = phi.num_variable;//变量数量
    for(int i=1;i<=atomNum;i++)
        result.insert(std::make_pair(i,true));
    int* nodeStatus = new int[atomNum];
    for(int i=0;i<atomNum;i++)
        nodeStatus[i]=0;
    int ptr = 0;//指向当前节点
    while(true){
        if(nodeStatus[ptr]==2)
            break;
        else if(nodeStatus[ptr]==0) {
            nodeStatus[ptr]++;
            result[ptr + 1] = false;
        }
        else {
            nodeStatus[ptr]++;
            result[ptr + 1] = true;
        }
        int solveStatus = 2;//0 肯定不是解，1 肯定是解，2 不确定
        //检查是否是解
        bool wholeValue = true;//整个式子的真值
        for(int i=0;i<clause_num;i++) //每个子句
        {
            bool currValue=false;//这个子句是不是假的
            bool any_notsure=false;//有没有不确定的literature
            int len = phi.clauses[i].size();
            for(int j=0;j<len;j++)
            {
                int currvar = phi.clauses[i][j];
                if(VAR(currvar)<=ptr+1)
                {
                    if((POSITIVE(currvar)&&result[currvar])||(NEGATIVE(currvar)&&!result[VAR(currvar)])){//有一个为真，子句为真
                        currValue=true;
                        break;
                    }
                }
                else{
                    any_notsure=true;
                }
            }
            wholeValue=wholeValue&&currValue;
            if(currValue||any_notsure){
                continue;
            }
            else{
                solveStatus=0;
                break;
            }
        }
        if(wholeValue)
            solveStatus=1;
        //检查完毕
        if(solveStatus==0)//肯定不是解，回溯
        {
            while(ptr>0&&nodeStatus[ptr]==2)
                ptr--;
            for(int i=ptr+1;i<atomNum;i++)
                nodeStatus[i]=0;
        }
        else if(solveStatus==1)
            return true;
        else ptr++;
    }
    return false;
}

model DPLL::get_model() {
    // TODO: your code here, or in the header file
    return this->result;
}
