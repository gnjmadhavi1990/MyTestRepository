trigger TaskTrigger on Task (before insert ,after Insert) {
    if(trigger.isBefore && trigger.isInsert){
        for(task taskRecord: Trigger.new){
            system.debug('found task record');
            taskRecord.Priority='High';
        }
    }
  
}