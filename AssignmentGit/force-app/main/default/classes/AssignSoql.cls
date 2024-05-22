public class AssignSoql {
    public static void retAcc(){
        List<Account> acc=[Select Id,Name,(Select Id, Name from Contacts) from Account];
        System.debug(acc);
      }
    
}