@isTest
public class myDataGenerationTests {
    
    @testSetup
    public static void myDataGenerationTests(){
        List<Sobject> account=Test.loadData(Account.sobjectType,'otherAccountData');
        
}
     @isTest
    static void testLoadOtherAccountsFromStaticResource(){
        List<Account> acc1=[Select Id from Account];
        System.Assert(acc1.size()==15,'expected 15 accounts');
}
    
    }