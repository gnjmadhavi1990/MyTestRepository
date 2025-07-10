trigger LeadTrigger on Lead (before update, after insert, before delete) {
    
    if(trigger.isBefore && trigger.isUpdate){
        for(Lead leadRecord:trigger.new){
            leadRecord.Status='Working - Contacted';
            
        }
    }
    if(trigger.isBefore && trigger.isUpdate){
        for(Lead leadRecord: trigger.new){
            if(leadRecord.Industry =='Healthcare'){
                leadRecord.LeadSource='Purchased List';
                leadRecord.SICCode__c='1100';
                leadRecord.Primary__c='Yes';
            }
        }
    }
    if(trigger.isAfter && trigger.isInsert){
        LeadTriggerHandler.createTaskAfterInsert(trigger.new);
    }
    if(trigger.isBefore && trigger.isDelete){
        LeadTriggerHandler.leadDeleteBefore(trigger.old);
    }
    if(trigger.isBefore && trigger.isUpdate){
       LeadTriggerHandler.checkCreateBefore(trigger.new);
    }
}