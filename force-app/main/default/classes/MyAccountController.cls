public class MyAccountController {
    public list<Account> accountList{get;set;}
    public MyAccountController(){
        accountList= [select Id,Name,Phone from Account];
    }

}