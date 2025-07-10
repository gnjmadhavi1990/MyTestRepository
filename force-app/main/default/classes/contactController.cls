public class contactController {
    @auraEnabled
    public static list<contact> getContacts(Id recordId){
        return [select Id, FirstName, LastName , Phone , Email from contact where AccountId = :recordId  ];
    }

}