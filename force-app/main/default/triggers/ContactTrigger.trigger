trigger ContactTrigger on Contact (before insert,after insert,after update) {
    
   // if(trigger.isBefore && trigger.isInsert){
   //    ContactTriggerHandler.creatContactBefore(trigger.new);
           
   // }
   /// if(trigger.isBefore && trigger.isInsert){
     //   ContactTriggerHandler.createConBefore(trigger.new);
   // }
   // if(trigger.isAfter && trigger.isInsert){
   //     ContactTriggerHandler.creatContactShareAfter(trigger.new);
   // }
if(trigger.isAfter && trigger.isUpdate){
        ContactTriggerHandler.updateConAfter(trigger.new,trigger.oldMap);
    }
}