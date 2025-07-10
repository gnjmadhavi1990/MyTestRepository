public class AsynFutureAcc {
    @future
    public static void getAccounts(list<Id> accIds){
        list<Account> accList=[select Id,Name,CasesThroughEmail__c,CasesThroughWeb__c,CasesThroughPhone__c,(select Id,Origin from Cases) from Account where Id=:accIds];
        
        for(Account acc:accList){
            integer Email=0, Phone=0, Web=0;
            for(Case ca:acc.Cases){
                if(ca.Origin =='Email'){
                    Email++;
                    
                }else if(ca.Origin =='Phone'){
                    Phone++;
                }else if(ca.Origin =='Web'){
                    Web++;
                }
            }
                 acc.CasesThroughEmail__c = Email;
                acc.CasesThroughPhone__c = Phone;
                 acc.CasesThroughWeb__c = Web;
            }
        if(!accList.isEmpty()){
            update accList;
        }
        }
    }