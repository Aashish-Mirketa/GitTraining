trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    if(Trigger.isAfter){
        if(Trigger.isUpdate==True || Trigger.isInsert==True){
            trigsHandle.updateAdd(Trigger.new);

    }
    }
}