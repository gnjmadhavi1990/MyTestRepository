public class GetAccountClass {
   @auraEnabled
   public static list<Account> getAccounts(){
       list<Account> accList=new list<Account>();
       accList=[select Id,Name from Account limit 10];
       

        return accList;
    }

}