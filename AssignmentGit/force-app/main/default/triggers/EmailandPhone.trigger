trigger EmailandPhone on Account (after Update) {
    triggerHandler2.updateCheck(Trigger.New,Trigger.oldMap);
    

}