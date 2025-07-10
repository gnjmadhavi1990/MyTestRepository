trigger AccountTrigger on Account (before update,after update,after Insert, after undelete,before insert ) {
    if(trigger.isBefore && trigger.isUpdate){
        AccountTriggerHandler.accUpdateBefore(trigger.new ,trigger.oldMap);
    }
    if(trigger.isAfter && trigger.isUpdate){
        AccountTriggerHandler.conUpdateAfter(trigger.new ,trigger.oldMap);
    }
   // if(trigger.isAfter && trigger.isInsert){
    //    AccountTriggerHandler.ConCreateAfterAcc(trigger.new);
  //  }
if(trigger.isAfter && trigger.isUndelete){
        AccountTriggerHandler.undeleteAfterAcc(trigger.new);
    }
    if(trigger.isBefore && trigger.isInsert){
        AccountTriggerHandler.insertAccBefore(trigger.new);
    }
}