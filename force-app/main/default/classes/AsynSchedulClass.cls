global class AsynSchedulClass implements Schedulable{
    global void execute(SchedulableContext sc){
        list<Opportunity> oppList  = [SELECT Id, Name,CloseDate,OwnerId FROM Opportunity WHERE isClosed=false AND CloseDate < today];
    OppAsynClass.OppAsynSchedulClass(oppList);
    }

}