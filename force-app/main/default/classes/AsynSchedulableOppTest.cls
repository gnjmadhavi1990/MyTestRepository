@isTest
public class AsynSchedulableOppTest {
   public static string sch='0 0 0 16 * ? 2025';
@isTest
    public static void TestSchedulable(){
        
        list<Opportunity> oppList=new list<Opportunity>();
        for(integer i=1;i<=5;i++){
            Opportunity opp=new Opportunity();
            opp.StageName='Prospecting';
            opp.Name='Stage'+i;
            opp.CloseDate= Date.today().addDays(-7);
            oppList.add(opp);
        }
        insert oppList;
        
        set<Id> setIds= new set<Id>();
       for(Opportunity opp: oppList){
              setIds.add(opp.Id);
       }
        Test.startTest();
        system.schedule('ReminderTask',sch,new AsynSchedulableOpp());
        Test.stopTest();
        list<Task> Tasks=[select Subject,OwnerId,WhatId from Task where WhatId=:setIds];
        system.assertEquals(5,Tasks.size());
        
    }
}