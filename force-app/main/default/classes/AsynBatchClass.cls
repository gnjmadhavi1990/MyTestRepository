public class AsynBatchClass implements Database.Batchable<sobject>,Database.stateful{
    public integer recordCount = 0;
    public Database.QueryLocator start (Database.BatchableContext bc){
        return Database.getQueryLocator([select Id,Name,LeadSource from Contact]);
        
    }public void execute(Database.BatchableContext bc,list<Contact> Con){
        for(Contact contact: con){
            contact.LeadSource='Web';
            
        }
        update con;
        recordCount = recordCount + con.size();
    }
    public void finish(Database.BatchableContext bc){
        system.debug('Total no of Records:' +recordCount);
    }    

}