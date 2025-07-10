@isTest
public class AsynBatchClassTest {
@isTest
    private static void getContact(){
        list<Contact> conList=[select Id,LeadSource,Name from Contact];
        for(integer i=0;i<200;i++){
            conList.add(new Contact(LastName='Test'+i,AccountId='0015h00001AGXU7AAP'));
            
        }
        insert conList;
        
        Test.startTest();
        AsynBatchClass batchObj=new AsynBatchClass();
        Id batchId=Database.executeBatch(batchObj);
        Test.stopTest();
        list<Contact> cons = [select Id,Name,LeadSource from Contact where LeadSource='Web' ];
        system.assertEquals(200,cons.size());
    }
}