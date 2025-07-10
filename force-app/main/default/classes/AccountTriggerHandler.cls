public class AccountTriggerHandler {
    public static void insertAccBefore(list<Account> newRec){
        list<Id> accId=new list<Id>();
        Map<Id,Id> mapOfAccCon= new Map<Id,Id>();
        for(Account acc: newRec){
            mapOfAccCon.put(acc.Id,acc.OwnerId);
        }
        Map<Id,User> mapList=new Map<Id,User>([select Name from User where Id IN :mapOfAccCon.values()]);
        for(Account acc: newRec){
            acc.Sales_Rep__c = mapList.get(mapOfAccCon.get(acc.Id)).Name;
        }
    }
    
    
    public static void undeleteAfterAcc(list<Account> accList){
        list<Id> accId=new list<Id>();
        list<Account> aL=new list<Account>();
        for(Account acc:accList){
            accId.add(acc.Id);
        }
        list<Account> aList = [select Id,Name from Account Where Id IN :accId];
        for(Account acc :aList){
            acc.Name ='Restored'+ acc.Name;
            aL.add(acc);
        }
        if(!aL.isEmpty()){
            update aL;
        }
    }
    public static void accUpdateBefore(list<Account> newAcc , Map<Id, Account> oldValues){
        for(Account acc: newAcc){
           
                if(acc.Industry =='Agriculture' && acc.Type == 'Prospect' ){
                     if(oldValues.get(acc.Id).Ownership != acc.Ownership){
                    acc.Ownership= 'Private';
                         acc.Ownership.addError('OwnerShipe is Private');
                }
            }
            
            }
        }
    public static void conUpdateAfter(list<Account> newAcc, Map<Id, Account> oldAcc){
        Map<Id, string> accToMapId =new Map<Id, String>();
        list<Id> accId=new list<Id>();
        for(Account acc: newAcc){
          if(oldAcc.get(acc.Id).Website != acc.Website){
                accToMapId.put(acc.Id, acc.Website);
                
          }
            if(acc.Industry != oldAcc.get(acc.Id).Industry && acc.Industry == 'Biotechnology'){
              accId.add(acc.Id);
            }
        }
        if(!accId.isEmpty()){
            callAsynApex(accId);
        }
            if(accToMapId.keySet().size()>0){
                list<Contact> conList=[select Id,Website__c, AccountId from Contact Where AccountId IN :accToMapId.keySet()];
               list<Contact> C =new list<Contact>();
                for(Contact con:conList){
                    con.Website__c= accToMapId.get(con.AccountId);
                    c.add(con);
                }
                if(c.size()>0){
                    update c;
                }
            }
        }
    @future
    public static void callAsynApex(list<Id> accountId){
        list<Contact> conL=new list<Contact>();
        list<Contact> conList=[select Id,LeadSource ,AccountId from Contact where AccountId IN :accountId];
        for(Contact con: conList){
            con.LeadSource='Web';
            conL.add(con);
        }
        if(!conL.isEmpty()){
            update conL; 
        }
       
    }
   /// public static void ConCreateAfterAcc(list<Account> accList){
    ///  list<Contact> conList =new list<Contact>();
     ///   for(Account acc:accList){
      ///      Contact con =new Contact();
       //     con.LastName= acc.Name + '**';
        //    con.AccountId= acc.Id;
        //    conList.add(con);
            
      //  }if(conList  != null)
      //  {
      //      Insert conList;
        //}
  //  }
}