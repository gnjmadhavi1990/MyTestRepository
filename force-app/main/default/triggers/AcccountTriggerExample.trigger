trigger AcccountTriggerExample on Account (after update) {
    
    list<Id> accountId=new list<Id>();
    list<Contact> conList=new list<Contact>();
    for(account acc:Trigger.new){
        Account accOld=Trigger.oldMap.get(acc.Id);
        if(accOld.Active__c != acc.Active__c && acc.Active__c =='Yes'){
            accountId.add(acc.Id);
        }
        
    }
    list<Contact> contactList=[select Id,PrimaryContact__c from Contact where AccountId IN :accountId];
    for(Contact con : contactList){
        con.PrimaryContact__c=true;
        conList.add(con);
    }
    if(conList.size()>0){
        Update conList;
    }

}