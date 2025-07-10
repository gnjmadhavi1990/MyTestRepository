public class practiceApexOne {
    
    public static void getContacts(){
        list<Contact> con = [select Id,LastName,Phone from Contact where LastName = 'kumar'];
       system.debug(+con);
        
    }

}