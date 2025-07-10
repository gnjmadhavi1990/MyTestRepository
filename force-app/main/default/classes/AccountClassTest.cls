@isTest
private class AccountClassTest {
    private static testMethod void testAccountClass(){
        Account accObj= Test_Data_Factory.prepareAccount(false);
        Test.startTest();
        AccountClass accO= new AccountClass();
        accO.acc  = accObj;
          accO.saveAccount();  
        Test.stopTest();
        Account acc=[select Id,Name from Account where name='Salesforce1'];
        system.assert(acc.Id != null);
        
    } 
}