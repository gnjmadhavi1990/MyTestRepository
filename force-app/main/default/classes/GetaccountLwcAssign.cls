public with sharing class GetaccountLwcAssign {
@AuraEnabled(cacheable=true)
public static list<Account> getaccounts(){
    list<Account> acc = [select ID,Name,Rating,Phone from Account where ID = '0015h00001AFhPMAA1'];
    system.debug('res:' +acc);
    return acc;
}
    }