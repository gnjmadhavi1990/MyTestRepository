public class ContactCreateClass {
    @AuraEnabled
    public static string createContact(Contact conObj){
        system.debug('Contact::'+conObj.firstName);
        insert conObj;
        return conObj.Id;
    }
    @Auraenabled
    public static list<Contact> retriveContact(){
        return [select Id,LastName,FirstName,Phone from Contact limit 10];
    }

}