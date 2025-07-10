public class practiceDemo {
    public void updateChildFromParent(){
        set<Id> accId= new set<Id>();
        list<Account> accList=[select Id,Name from Account Where Name LIKE 'test%'];
        for( Account acc:accList){
            accId.add(acc.Id);
        }
        list<Contact> conList=[select Id,Name ,PrimaryContact__c from Contact Where AccountId IN:accId];
        for(contact con:conList){
            con.PrimaryContact__c= true;
            
        
            
        
    }
        update conList;
    }
}