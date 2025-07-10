public with sharing class getAccountsLwc {
    @AuraEnabled(cacheable=true)
    public static list<Account> getaccounts(){
        list<Account> acc = [Select Id,Name,Rating from Account limit 5];
        System.debug('res'+acc);
        return acc;
    }
}