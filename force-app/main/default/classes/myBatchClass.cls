public class myBatchClass implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator([select Id,email from Contact]);
        
    }
    public void execute(Database.BatchableContext BC,List<Contact> scope){
        for(Contact S : scope){
            if(S.email == Null){
                S.email = 'madhavig108@gmail.com';
            }
        }
        Update scope;
        
    }
    public void finish(Database.BatchableContext BC){
        
    }

}