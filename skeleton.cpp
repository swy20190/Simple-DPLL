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
        //check if the current interpret satisfies the CNF
		...
        if(wholeValue)
            solveStatus=1;
        //now the interpret has been checked, solveStatus has been set
        if(solveStatus==0)//not satisfy, back up
        {
            while(ptr>0&&nodeStatus[ptr]==2)
                ptr--;
            for(int i=ptr+1;i<atomNum;i++)
                nodeStatus[i]=0;
        }
        else if(solveStatus==1)//satisfy!
            return true;
        else ptr++;//not sure yet, check the next node
    }
    return false;//no satisfying interpret, return unsat
}