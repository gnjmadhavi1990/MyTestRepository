trigger ProjectRequirement1 on WorkRequest__c (after insert,after update) {
    if((trigger.isinsert == true)&&(trigger.isafter)){
   projectApex1.ifworkrequestcreate(trigger.new);
}
}