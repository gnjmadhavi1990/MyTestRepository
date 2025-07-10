@isTest
public class AsynFutureAccTest {
    @isTest
    private static void getAccountsTest(){
        list<Account> accList=new list<Account>();
        for(integer i=0;i<5;i++){
            accList.add(new Account(Name='Test'+i));
            
        }
        insert accList;
        
        list<Case> caseList=new list<Case>();
      list<Id> accId=new list<Id>();
        for(Account acc: accList){
            accId.add(acc.Id);
            for(integer i=1;i<=3;i++){
                Case c=new Case();
            c.Origin='Phone';
           c.Priority='High';
            c.Status='New';
                c.AccountId=acc.Id;
            caseList.add(c);
            }
            for(integer i=1;i<=3;i++){
                Case c=new Case();
            c.Origin='Web';
            c.Priority='High';
            c.Status='New';
                c.AccountId=acc.Id;
            caseList.add(c);
            
        }
            for(integer i=1;i<=3;i++){
                Case c=new Case();
            c.Origin='Email';
            c.Priority='High';
            c.Status='New';
                c.AccountId=acc.Id;
            caseList.add(c);
    }

}
        insert caseList;
        
        Test.startTest();
        AsynFutureAcc.getAccounts(accId);
        Test.stopTest();
        list<Account> accs=[select Id,CasesThroughPhone__c,CasesThroughWeb__c,CasesThroughEmail__c from Account where Id=:accId];
        system.assertEquals(3,accs[0].CasesThroughEmail__c);
        system.assertEquals(3,accs[0].CasesThroughPhone__c);
        system.assertEquals(3,accs[0].CasesThroughWeb__c);
    }      
}