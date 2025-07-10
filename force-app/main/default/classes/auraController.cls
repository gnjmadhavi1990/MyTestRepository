public class auraController {
    
    @auraEnabled
    public static List<Account> getAccountList(){
        List<Account> accList = new List<Account>();
        accList= [SELECT Id, Name, Phone FROM Account LIMIT 10];
        return accList;
        
    }

}