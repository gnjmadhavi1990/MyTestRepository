public class contactcreateapex {
    public static void countcontacts(list<contact> newlist, list<contact> oldlist){
    set<id> accountids = new set<id>();
        if(trigger.isinsert){
       for (contact c : newlist){
        accountids.add(c.accountid);                
            }
        }
        if(trigger.isdelete){
    for(contact c: oldlist)
     {
   accountids.add(c.accountid);
     }
        }
     list<account> accountlist = [Select Id , No_of_contacts__c, (Select Id from contacts) from account where id =: accountids];
    for(account racc : accountlist) {
     integer Noofcontacts = racc.contacts.size();
         racc.No_of_contacts__c = noofcontacts;
        accountlist.add(racc);
   }
             if(accountlist != null)
             {
   update accountlist;
         }
   }
    }