public class FetchContactController {
    @Auraenabled
    public static list<Contact> getContact(){
        list<Contact> conList=[select Id,Name,Phone ,Email,AccountId from Contact];
        return conList;
    }

}