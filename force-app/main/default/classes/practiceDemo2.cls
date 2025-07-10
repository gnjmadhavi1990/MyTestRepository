public class practiceDemo2 {
    public void updatePhoneToContact(){
        map<Id,String> mapOfPhone=new map<Id,string>();
        List<Contact> updateContact=new List<Contact>();
        List<Account> accList=[select Id,Name,Phone from Account Where Name LIKE 'sriramana'];
        for(Account acc:accList){
            mapOfPhone.put(acc.Id,acc.Phone);
        }
        list<Contact> conList=[select Id,Name,AccountId,Phone from Contact Where AccountId IN:mapOfPhone.keyset()];
        for(Contact con:conList){
            con.Phone=mapOfPhone.get(con.AccountId);
            updateContact.add(con);
        }
        update updateContact;
    }

}