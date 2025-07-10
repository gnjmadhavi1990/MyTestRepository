@isTest
public class AsynBatchAccClassTest {
@isTest
    private static void BatchableTest(){
        list<Account> acclist=new list<Account>();
        for(integer i=0;i<200;i++){
            acclist.add(new Account(Name='test'+i,BillingStreet='BanjaraHills',BillingState='Telangana',BillingCountry='India',BillingCity='Hyd',BillingPostalCode='500008'));
        }
        insert acclist;
        list<Contact> conlist=new list<Contact>();
        for(Account acc: acclist){
               Contact con=new Contact();
            con.lastName='Test';
            con.AccountId=acc.Id;
            
                conlist.add(con);
            }
        
        insert conlist;
        Test.startTest();
        AsynBatchAccClass batch=new AsynBatchAccClass();
        Database.executeBatch(batch);
        Test.stopTest();
        integer cons=[select count() from Contact where MailingCity='Hyd'];
        system.assertEquals(200,cons);
    }
}