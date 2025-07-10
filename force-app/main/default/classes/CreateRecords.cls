public class CreateRecords {
    @Auraenabled
    public static string createContactRecord(contact conObj){
        system.debug('contact:'+conObj.firstName);
        insert conObj;
        return conObj.Id;
    }
    @Auraenabled
    public static list<Contact> retriveContact(){
        return [select Id,FirstName,LastName, Phone from Contact limit 5];
      
    }

}