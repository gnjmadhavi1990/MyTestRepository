@isTest
public class AsynFutureClassTest {
    @isTest
    private static void getContactTest(){
        list<Account> accList=new list<Account>();
        for(integer i=0;i<250;i++){
            accList.add(new Account(Name='Test'+i));
        }
        insert accList;
        list<Contact> conList=new list<Contact>();
        list<Id> accIds=new list<Id>();
        for(Account acc:accList){
                    conList.add(new Contact(firstName='Test',lastName=acc.Name,accountId=acc.Id));
            accIds.add(acc.Id);

        }
        insert conList;
        Test.startTest();
        AsynFutureClass.getContacts(accIds);
        Test.stopTest();
        list<Account> accs=[select Id,No_of_contacts__c from Account];
        system.assertEquals(2,accs[0].No_of_contacts__c,'Contact Count counted successfully');
    }
}