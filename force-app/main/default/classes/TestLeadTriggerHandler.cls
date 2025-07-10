@isTest
private class TestLeadTriggerHandler {
    @testSetup static void setData(){
        Lead lead=new Lead();
        lead.Status='Open - Not Contacted';
        lead.Company='SBH Corp';
        lead.LastName='Ganji';
        
       insert lead;
    }
   
}