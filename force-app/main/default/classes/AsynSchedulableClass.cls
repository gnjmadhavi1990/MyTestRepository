public class AsynSchedulableClass implements Schedulable{
    public void execute(SchedulableContext sc){
        list<opportunity> oppList=[select Id,Name,CloseDate,LeadSource from Opportunity where LeadSource=null limit 200];
        for(Opportunity opp:oppList){
            opp.LeadSource='Web';
            
        }
        if(!oppList.isEmpty()){
            update oppList;
        }
        
    }

}