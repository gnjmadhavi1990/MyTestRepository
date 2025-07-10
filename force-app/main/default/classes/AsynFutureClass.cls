public class AsynFutureClass {
   @future
    public static void getContacts(list<Id> accIds){
        list<Account> accList=[select Id,(select Id,Name from Contacts)Name from Account where Id=:accIds];
        for(Account acc:accList){
            acc.No_of_contacts__c=acc.Contacts.size();
                 }
            if(!accList.isEmpty()){
                update accList;
            }
        }
        
    
}