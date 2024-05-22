public class triggerHandler {
    public static void UpdateField(List<Account > acc){
        List<Personal_Detail__c> pdlist=new List<Personal_Detail__c>();
        for(Account a:acc){
             Personal_Detail__c pd=new Personal_Detail__c();
            pd.Account__c=a.id;
           
            pd.Name=a.Name;
            pd.Person_Employee_ID__c=a.Id;
            pd.Person_Phone__c=a.Phone;
            pd.Description__c=a.Description;
            pd.Person_Email__c=a.Email_Account__c;
            pdlist.add(pd);
           
        }
        Insert pdlist;
        
}
}