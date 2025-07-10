public class getAccountLwcNull {
@AuraEnabled(cacheable=true)
    public static list<Account> getaccounts(){
        list<Account> acc =[Select  Id , Name, Rating from Account limit 5];
        acc[0].clear();//name=null;
        System.debug('res' +acc[0].name);
        return acc;
    }
}