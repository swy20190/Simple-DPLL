//
// Created by swy on 2020/3/2.
//
//
// DPLL algorithm.
//

#include "DPLL.h"

bool DPLL::check_sat() {
    // TODO: your code here, or in the header file
    std::unordered_map<int,int> atomStatus;//0,1,2
    int clause_num = phi.clauses.size();//number of clauses
    int atomNum = phi.num_variable;//number of atoms
    for(int i=1;i<=atomNum;i++)
        result.insert(std::make_pair(i,true));
    int* nodeStatus = new int[atomNum];
    for(int i=0;i<atomNum;i++)
        nodeStatus[i]=0;
    int ptr = 0;//point to current node
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
        int solveStatus = 2;//0 :false sured,1:true sured,2:not sure t/f
        //check the interpret
        bool wholeValue = true;//the value of the whole cnf
        for(int i=0;i<clause_num;i++) //for each clause
        {
            bool currValue=false;//is the current clause false?
            bool any_notsure=false;//any literature not sured?
            int len = phi.clauses[i].size();
            for(int j=0;j<len;j++)
            {
                int currvar = phi.clauses[i][j];
                if(VAR(currvar)<=ptr+1)
                {
                    if((POSITIVE(currvar)&&result[currvar])||(NEGATIVE(currvar)&&!result[VAR(currvar)])){//one literature is true, then the whole clause is true
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
        //check over
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
