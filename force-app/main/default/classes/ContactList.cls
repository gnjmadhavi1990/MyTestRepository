public class ContactList {
    public list<Contact> contactList {get;set;}
    public ContactList(ApexPages.standardController stdController){
        contactList=new list<Contact>();
        contactList=[select Id,AccountId,FirstName,LastName from Contact];
    }

}