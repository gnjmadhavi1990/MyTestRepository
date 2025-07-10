trigger MyDemoTrigger on Account (before insert , before update) {
    if(trigger.isInsert && trigger.isBefore){
        MyDemoTriggerApex.AccDescr(trigger.new);
            
    }
    else if(trigger.isUpdate){
        //call uodate Method
}
}