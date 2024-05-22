trigger DeveloperTrigger on DeveloperP__c (before insert, before update) {
    DeveloperTriggerHandler.handleTrigger(Trigger.new);
}