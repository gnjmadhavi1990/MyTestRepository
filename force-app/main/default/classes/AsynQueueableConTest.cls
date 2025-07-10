@isTest
public class AsynQueueableConTest {
@testSetup
    static void testAsynQueueableCon(){
        list<Account> acclist=new list<Account>();
        for(integer i=0;i<5;i++){
            acclist.add(new Account(Name='test'+i,industry='Media'));
            
        }
        insert acclist;
        
    }
    @isTest
    public static void testQueueable(){
       Contact con=new Contact(LastName='TestQueueApex');
        insert con;
        string IndustryValue ='Media';
        Test.startTest();
        AsynQueueableCon que=new AsynQueueableCon(con,IndustryValue);
        Id JobId=system.enqueueJob(que);
        Test.stopTest();
        list<Contact> conlist=[select Id,AccountId from Contact where AccountId IN (select Id from Account where Industry='Media')];
        
        system.assertEquals(5,conlist.size());
        
    }
}