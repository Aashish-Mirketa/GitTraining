public class LeadProcessor implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
       return Database.getQueryLocator('Select Id,LeadSource From Lead');
        
}
    public void execute(Database.BatchableContext bc,List<Lead> leadRecords){
        List<Lead> leadList=new List<Lead>();
        for(Lead l:leadRecords){
            l.LeadSource='Dreamforce';
            leadList.add(l);
}
        update leadList;
}
    public void finish(Database.BatchableContext bc){
}
}