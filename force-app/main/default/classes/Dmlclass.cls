public class Dmlclass {
    
    public static void insertacc(){
        list<account> lacc = new list<account>();
        account acc = new account();
        acc.name = 'Zolo';
        acc.testpicklist__c = 'two';
            lacc.add(acc);
            acc = new account();
            acc.name = '';
            acc.testpicklist__c = 'Hot';
            lacc.add(acc);
        system.debug('Account list size:' +lacc.size());
        try{
            Database.SaveResult[] res=Database.insert(lacc,false);
            for(Database.SaveResult result: res){
                if(result.isSuccess()){
                    system.debug('Sucessfully insert Account:' +result.getId());
                }
            
            else{
                    for(Database.Error error:result.getErrors()){
                        system.debug('Error status:' +error.getStatusCode()+ ':'+'Error fields:' +error.getFields());
                    }
                }
            }
        }catch(DMLException e){
            throw new DMLException('Unable to perform DML operation on Account:' +e.getMessage());
            
        }
        
        
    }
    Public static void updateacc(id accid){
        account acc = [select id,rating from account where id = :accid];
        if((acc != null) && (acc.rating == 'Warm')){
            acc.rating = 'Cold';
            update acc;
        }
    }
    Public static void upsertacc(){
        list<account> acc = new list<account>();
       account racc = new account();
        racc.name = 'upsert acc';
        racc.rating = 'Hot';
        acc.add(racc);
         racc = new account();
        racc.name = 'myacc';
        racc.id = '0015h00001AGY5MAAX';
        racc.rating = 'Warm';
        acc.add(racc);
        list<database.UpsertResult> res = database.upsert(acc,false);
        system.debug(res);
    }
             Public static void deleteacc(){
               list<account> acc = new list<account>();
       account racc = new account();
        racc.name = 'upsert acc';
                 racc.id = '0015h00001AGZWSAA5';
                 acc.add(racc);
                 delete acc;
             }
}