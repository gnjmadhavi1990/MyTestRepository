public class AccountProperties {
    public string accountName{get;set;}
    public string accountType{get;set;}
    public pagereference save(){
        Account accObj = new Account();
        accObj.Name=accountName;
        accObj.Type=accountType;
        insert accObj;
        return new pagereference('/'+accObj.Id);
    }
}