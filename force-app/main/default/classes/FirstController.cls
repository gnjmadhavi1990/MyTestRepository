public class FirstController {
    
    public string venName{get;set;}
    public integer venNoofFalts{get;set;}
    public integer venNoofBookedFlats{get;set;}
    public string cusPhone{get;set;}
    public string cusEmail{get;set;}
    public string cusName{get;set;}
   public string agentName{get;set;}
    public integer agentPhone{get;set;}

    public void saveRecord(){
        Venture__c v= new Venture__c(Name=venName, No_of_Flats__c=venNoofFalts,	No_of_Booked_Flats__c=venNoofBookedFlats);
        insert v;
        Customers__c c= new Customers__c(Name = cusName,Phone__c=cusPhone, email__c=cusEmail, Flat_located_Venture__c= v.Id);
        Agents1__c a=new Agents1__c(	Name=agentName,	Venture_assigned__c=v.Id);
            
            
    }
    

}