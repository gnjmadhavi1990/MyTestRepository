trigger CaseTrigger on Case (before insert,before delete) {
    if(trigger.isBefore && trigger.isInsert){
        for(Case caseRecord:trigger.New){
            if(caseRecord.Origin =='Phone'){
                caseRecord.Priority='High';
                
            }else{
                caseRecord.Priority='Low';
            }
        }
    }
    if(trigger.isBefore && trigger.isDelete){
        CaseTriggerHandler.deleteCaseBefore(trigger.old);
    }
    
}