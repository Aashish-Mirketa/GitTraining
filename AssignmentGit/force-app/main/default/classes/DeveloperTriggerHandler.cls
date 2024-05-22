public class DeveloperTriggerHandler {

  public static void handleTrigger(List<DeveloperP__c> developers) {
        List<Log__c> logsToUpdate = new List<Log__c>();
        
        for (DeveloperP__c dev : developers) {
           
            if (!Schema.sObjectType.DeveloperP__c.fields.Salary__c.isUpdateable()) {
      
                Log__c log = new Log__c();
              
                log.Reason__c = 'Salary field does not have update permission.';
                log.StackTrace__c = 'Trigger: DeveloperTrigger, Handler: DeveloperTriggerHandler';
                logsToUpdate.add(log);
            }
        }
        
        if (!logsToUpdate.isEmpty()) {
            insert logsToUpdate;
        }
    }
}