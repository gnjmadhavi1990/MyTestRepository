public with sharing class refreshApex {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList(){
        return[SELECT Id,FirstName,LastName FROM Contact LIMIT 5 ];
       

    }
}