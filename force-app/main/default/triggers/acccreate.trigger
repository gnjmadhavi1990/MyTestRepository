trigger acccreate on Account (before insert , before update, after insert, after update) {
    if(trigger.isInsert == true && trigger.isBefore == true){
        accountcreateapex.ifacccreate(trigger.new);
    }else if(trigger.isUpdate == true && trigger.isBefore == true){
         accountcreateapex.ifaccupdate(trigger.new, trigger.oldmap);
}else if(trigger.isinsert == true && trigger.isafter == true){
         accountcreateapex.ifaccupdate(trigger.new, trigger.newmap);
}
}