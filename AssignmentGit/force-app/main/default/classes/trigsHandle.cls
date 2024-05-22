public class trigsHandle {
    public static void updateAdd(List<Opportunity>  oppList){
    List<Task> opp=new List<Task>();
        for(Opportunity op:oppList){
            if(op.stageName=='Closed Won'){
                Task tk = new Task();
                 tk.Subject='Follow Up Test Task';
                 tk.WhatId=op.Id;
                opp.add(tk);
             }      
    }
        insert opp;
 }
}