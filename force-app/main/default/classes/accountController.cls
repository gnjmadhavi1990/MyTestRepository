public class accountController {
    @AuraEnabled
    public static list<Account> getAccounts(){
        list<Account> accList = new list<Account>();
        return [select Id,Name from Account limit 10];
    }
    

}