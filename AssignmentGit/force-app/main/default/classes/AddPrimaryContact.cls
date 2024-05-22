public class AddPrimaryContact implements Queueable {
       Contact con;
       String abbr;
    public  AddPrimaryContact(Contact con, String abbr){
        this.con=con;
        this.abbr=abbr;
           
      }
    public void  execute(QueueableContext qc){
        List<Account> accList=[Select Id,Name from Account Where BillingState =:abbr LIMIT 200];
        List<Contact> conList=new List<Contact>();
        for(Account acc:accList){
        Contact clonedCon=con.clone();
         clonedCon.AccountId=acc.Id;
          conList.add(clonedCon);
            
        }
        insert conList;
}

}