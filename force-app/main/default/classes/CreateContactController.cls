public class CreateContactController {
@Auraenabled
    public static string createContacts(string accountId){
        Account accObj=[select Id, Name, Phone from Account where  Id=:accountId];
        contact conObj=new contact();
                  conObj.LastName=accObj.Name;
        conObj.Phone=accObj.Phone;
        conObj.AccountId=accObj.Id;
        insert conObj;
        return conObj.Id;
    }
    @Auraenabled
    public static string contacts(contact conOBJ){
        insert conOBJ;
        return conOBJ.Id;
        
    }
}