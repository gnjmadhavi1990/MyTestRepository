global class BatchApexPractice implements Database.Batchable<sobject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        
        string query='select Id,LastName from Contact';
        system.debug('start method got called');
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext bc,list<Contact> scope){
        system.debug('Execute method got called');
        for(Contact c: scope){
            c.LastName = c.LastName;
            
        }
        update scope;
        
    }global void finish(Database.BatchableContext bc){
        system.debug('finish method got called');
    }
    

}