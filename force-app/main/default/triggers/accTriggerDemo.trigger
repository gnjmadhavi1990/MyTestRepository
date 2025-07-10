trigger accTriggerDemo on Account (before insert, before update ,after update) {
    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('I am in before context');
        
    }
    if(Trigger.isbefore && Trigger.isUpdate){
        for(account acc:trigger.new){
            system.debug('New Name:'+acc.Name);
            system.debug('old Name:'+Trigger.oldmap.get(acc.Id).Name);
        }
    }

}