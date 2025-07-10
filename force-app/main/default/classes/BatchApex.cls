public class BatchApex implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('Select Id,Name ,Ownership from Account');
        
    }
    public void execute(Database.BatchableContext BC, List<Account> records){
        system.debug('In Execute Method');
        list<account> accList=new list<account>();
        for(Account s:records){
           s.Ownership='public';
            accList.add(s);
            
        }
        update accList;
    }
    public void finish(Database.BatchableContext BC){
        system.debug('Batch is Finished');
    }

}