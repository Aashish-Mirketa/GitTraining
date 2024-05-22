@isTest
public class AddPrimaryContactTest {
    @TestSetup
    public static void setup(){
        List<Account> accList=new List<Account>();
        for(Integer i=0;i<50;i++){
            Account acc=new Account(Name='Test'+i,BillingState='NY');
            accList.add(acc);
          }
         for(Integer i=0;i<50;i++){
            Account acc=new Account(Name='Testacc'+i,BillingState='CA');
            accList.add(acc);
          }
        insert accList;
        
    }
    @isTest
    public Static void addPrimary_Test(){
        Contact con=new Contact(LastName='Tested Clone');
        Test.startTest();
        AddPrimaryContact apc=new AddPrimaryContact(con,'CA');
        System.enqueueJob(apc);
        Test.stopTest();
        System.assertEquals(50,[Select Id from Contact Where Account.BillingState='CA'].size());
        
    }

}