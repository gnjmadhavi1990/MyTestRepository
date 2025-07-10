@isTest
public class AsynQueueableClassTest {
@testSetup
    static void setup(){
        list<Account> accList=new list<Account>();
        accList.add(new Account(Name='Parent'));
        for(integer i=0;i<100;i++){
            accList.add(new Account(Name='Test Account'+i));
            
        }
        insert accList;
        
    }
    @isTest
    private static void testQueueable(){
        list<Account> accL=[select Id,Name from Account where Name Like 'Test Account%'];
        Id parentId = [select Id,Name from Account where Name='Parent'][0].Id;
        AsynQueueableClass queue=new AsynQueueableClass(accL,parentId);
        Test.startTest();
        system.enqueueJob(queue);
        Test.stopTest();
        system.assertEquals(100,[select count() from Account where ParentId=:parentId]);
    }
}