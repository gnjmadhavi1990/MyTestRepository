@isTest
private class AccountTriggerHandlerTest {
    private static testMethod void testConCreateAfterAcc(){
        Account acc=new Account();
        acc.Name='Salesforce Testing';
        acc.Rating='Hot';
        acc.Type='Others';
        Test.startTest();
        insert acc;
        Test.stopTest();
       Contact con=[select Id,LastName,FirstName from Contact where AccountId=:acc.Id];
       system.assert(con.Id != null);
    }}