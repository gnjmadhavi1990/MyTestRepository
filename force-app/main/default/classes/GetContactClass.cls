public class GetContactClass {
    @auraEnabled
    public static list<Contact> GetContacts(){
        return [select Id, Name, Phone, Email from Contact Limit 10];
    }
    // @auraEnabled
   // public static list<Contact> getContacts(Id recordId){
   //     return [select Id, Name, Phone, Email from Contact where AccountId=:recordId ];
   // }
}