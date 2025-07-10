trigger contactcreate on Contact (after insert , after update , after delete) {
    
              list<id> addcon = new list<id>();
            list<account> lacc = new list<account>();
        if(trigger.isinsert){
       for (contact c : trigger.new){
        addcon.add(c.accountid);                
            }
        }
    if(trigger.isupdate){
    for(contact c: trigger.new)
     {
   addcon.add(c.accountid);
     }
    }
        if(trigger.isdelete){
    for(contact c: trigger.old)
     {
   addcon.add(c.accountid);
     }
        }
     list<account> accountlist = [Select Id , No_of_contacts__c, (Select Id from contacts) from account where id =: addcon];
    for(account racc : accountlist) {
     racc.No_of_contacts__c = racc.contacts.size();
       lacc.add(racc);
   }
             if(lacc != null)
             {
   update lacc;
         }
   }