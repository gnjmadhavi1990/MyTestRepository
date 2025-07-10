public class FetchAccountsController {
@Auraenabled
    public static list<Account> getAccounts(){
       list<Account> accList=[select Id,Name,Phone from Account  limit 5];
        return accList;
    }
}