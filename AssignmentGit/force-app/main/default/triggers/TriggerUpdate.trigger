trigger TriggerUpdate on Account (After insert) {
triggerHandler.UpdateField(Trigger.new);
}