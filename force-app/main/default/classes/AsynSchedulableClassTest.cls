@isTest
public class AsynSchedulableClassTest {
@isTest
    private static void SchedulableTest(){
        string Sch='0 0 0 17 7 ? 2025';
        list<Opportunity> oppList=new list<Opportunity>();
        for(integer i=0;i<500;i++){
            if(i<250){
                oppList.add(new Opportunity(Name='Test Account'+i,CloseDate=system.Today(),StageName='Prospecting'));
                
            }else{
                oppList.add(new Opportunity(Name='Test Account'+i,CloseDate=system.Today(),LeadSource='Other',StageName='Prospecting'));
                
            }
            
        }
        insert oppList;
        Test.startTest();
        AsynSchedulableClass Schedul =new AsynSchedulableClass();
        system.schedule('reminder',Sch,Schedul);
        Test.stopTest();
        list<Opportunity> opps=[select Id ,Name,LeadSource from Opportunity where LeadSource='web'];
        system.assertEquals(200,opps.size());
    }
}