trigger OpportunityTrigger on Opportunity (after update,before update,after delete) {
    if(trigger.isAfter && trigger.isUpdate){
        OpportunityTriggerHandler.CreateTaskAfterUpdate(trigger.new);
        OpportunityTriggerHandler.addTeamMembers(trigger.new, trigger.oldMap);
        OpportunityTriggerHandler.updateOppAfter(trigger.new,trigger.oldMap);
    }
    if(trigger.isBefore && trigger.isUpdate){
      OpportunityTriggerHandler.OppUpdateBefore(trigger.new,trigger.oldMap);
    }
    if(trigger.isAfter && trigger.isDelete){
        OpportunityTriggerHandler.deleteOppTaskAfter(trigger.old);
    }
}