public class triggerHandler2 {
    public static void updateCheck(List<Account> newAccounts, Map<Id, Account> oldAccountMap) {
        List<Personal_Detail__c> personalDetailsToUpdate = new List<Personal_Detail__c>();
        
        for (Account acc : newAccounts) {
            Personal_Detail__c pd=new Personal_Detail__c();
            Account oldAcc = oldAccountMap.get(acc.Id);
           
            if (acc.Email_Account__c != oldAcc.Email_Account__c) {
               
                List<Personal_Detail__c> personalDetails = [SELECT Id, Description__c FROM Personal_Detail__c WHERE Account__c = :acc.Id];
                pd.Description__c = 'Email is Updated from '+oldAcc.Email_Account__c+'to'+acc.Email_Account__c;}
            if(acc.Phone != oldAcc.Phone)     
            { List<Personal_Detail__c> personalDetails1 = [SELECT Id, Description__c FROM Personal_Detail__c WHERE Account__c = :acc.Id];
                pd.Description__c = 'Phone is Updated from '+oldAcc.Phone+'to'+acc.Phone;
                    personalDetailsToUpdate.add(pd);
                }
            }
        
        
            update personalDetailsToUpdate;
        
}
}