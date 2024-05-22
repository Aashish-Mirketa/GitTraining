trigger AccountAddressTrigger on Account (before insert,before update) {
      List<Account> acclist=Trigger.new;
      List<Account> fin=new List<Account>();
        for(Account acc:acclist){
        if(	acc.Match_Billing_Address__c==true)
        {
            acc.ShippingPostalCode = acc.BillingPostalCode;
        }
          
        }
    
}