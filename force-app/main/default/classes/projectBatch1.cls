public class projectBatch1 implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator([select No_of_Hours_Worked__c ,Status__c from AssignedWork__c]);
    }
    public void execute(Database.BatchableContext BC, List<AssignedWork__c> Scope){
        list<AssignedWork__c> asswork = new list<AssignedWork__c>();
      for(AssignedWork__c assw: Scope){
            if(assw.Status__c=='Assigned'){
            assw.No_of_Hours_Worked__c = assw.No_of_Hours_Worked__c+1;
                asswork.add(assw);
                
            }
            update asswork;
        }
    }
    public void finish(Database.BatchableContext BC){
        
    }

}