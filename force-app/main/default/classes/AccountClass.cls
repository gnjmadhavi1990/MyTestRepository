public class AccountClass {
    public Account acc{get;set;}
    public AccountClass(){
        acc = new Account();
        
    }
    public pagereference saveAccount(){
        insert acc;
        return new pagereference('/'+acc.Id);
    }
}