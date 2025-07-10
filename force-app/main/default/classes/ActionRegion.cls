public class ActionRegion {

    public employee__c emp{get;set;}
    public string empNo{get;set;}
    public ActionRegion(){
        emp =new employee__c();
        
    }
    public pagereference getEmpDetails(){
        emp=[select employee_id__c,	dept__c,Name,	phone_number__c from employee__c where employee_id__c=:empNo];
        return null;
    }
}