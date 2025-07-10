public with sharing class dragAndDrop {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountId(Id accId){

        return[SELECT Id, Name, Phone FROM Account WHERE Id= :accId];
    }
    @AuraEnabled(cacheable=true)
  
   public static List<Account> getAccount(){
    return[SELECT Id, Name, AnnualRevenue FROM Account WHERE annualRevenue!=null LIMIT 10];


   }
   @AuraEnabled(cacheable=true)
   public static List<Contact> getContacts(){
    return [SELECT Id, FirstName,LastName, Phone FROM Contact LIMIT 5];
   }
}