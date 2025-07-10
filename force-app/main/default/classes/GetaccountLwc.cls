public with sharing class GetaccountLwc {
    @AuraEnabled(cacheable=true)
    public static list<Account> getaccounts(string keyword){
        string searchVal ='%' + keyword +'%';
        list<Account> acc = [Select Id,Name, Phone,Rating from Account where Name LIKE : searchVal ];
        System.debug('res'+acc);
        return acc;
    }
}