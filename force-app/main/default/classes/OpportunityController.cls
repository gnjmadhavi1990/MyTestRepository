public class OpportunityController {
    public Opportunity opp{get;set;}
    public OpportunityController(){
        opp=new Opportunity();
    
        
        
    }public pagereference save(){
        insert opp;
        return new pagereference('/'+opp.Id);
    }

}