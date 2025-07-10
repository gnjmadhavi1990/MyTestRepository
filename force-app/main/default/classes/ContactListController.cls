public class ContactListController {
    
    public void accountRecord(Id accId){
        
        list<Contact> conList=[select ID,FirstName,LastName, AccountId from Contact where AccountId =:accId];
    }

}