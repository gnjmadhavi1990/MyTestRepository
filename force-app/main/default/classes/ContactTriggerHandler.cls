public class ContactTriggerHandler {
    public static void updateConAfter(list<Contact> conlist, Map<Id,Contact> oldValues){
        list<Id> listofIds=new list<Id>();
        for(Contact con:conList){
            if(con.AccountId != null){
                if(con.Email != oldValues.get(con.Id).Email || con.Phone != oldValues.get(con.Id).Phone){
                listofIds.add(con.AccountId);
            }
            }
            
        }
        list<string> addressList= new list<string>();
        list<Account> AccountRecord=[select OwnerId,Owner.Email from Account where id IN:listofIds];
        for(Account acc:AccountRecord){
            addressList.add(acc.Owner.Email);
        }
        if(!listofIds.isEmpty()){
            Messaging.SingleEmailMessage[] messages=new list<Messaging.SingleEmailMessage>();
            for(Id accId:listofIds){
                Messaging.SingleEmailMessage message=new Messaging.SingleEmailMessage();
                message.Subject='Email or Phone Number Has been Changed';
                message.plainTextBody='Dear Account Holder your Email or Phone has been Modified';
                message.optOutPolicy='Filter';
                message.toAddresses= addressList; 
                messages.add(message);
            }
            Messaging.SendEmailResult[] result= Messaging.sendEmail(messages);
            
        }
        
        
    }
    public static void creatContactShareAfter(list<Contact> newRecord){
        list<ContactShare> conShare = new list<ContactShare>(); 
        Id ContactInnovatorsGroup= [select Id,Name from Group where Name ='ContactInnovators'].Id;
        for(Contact con: newRecord){
            ContactShare conS = new ContactShare();
            conS.ContactId = con.Id;
            conS.ContactAccessLevel='Edit';
            conS.UserOrGroupId = ContactInnovatorsGroup;
            conS.RowCause='Manual';
            conShare.add(conS);
        }
        if(!conShare.isEmpty()){
            insert conShare;
        }
        
    }
    
   /// public static void creatContactBefore(list<Contact> conList){
        
     //    for(Contact con:conList){
      //      if(con.AccountId  == null){
          //      con.AccountId.addError('Please select Account Name');
//}
/// }
 //   }
    public static void createConBefore(list<Contact> cList){
        list<Contact> conList = [select Id, LastName , FirstName, Email, Phone from Contact LIMIT 100];
        for(Contact c: cList){
            for(Contact con:conList){
                if(c.LastName == con.LastName && c.FirstName == con.LastName && c.Email == con.Email && c.Phone == con.Phone){
                c.addError('Already Exist with same Details');
                
            }
            }
            
        }
        list<Id> AccIds=new list<Id>();
       
        for(Contact con:cList){
            AccIds.add(con.AccountId);
           
        }
        Map<Id,Account> MapofAcc=new Map<Id,Account>([select Id,Max_No_of_Contact_Allowed__c,BillingStreet,BillingState,BillingCountry,BillingCity,BillingPostalCode,(select Id from Contacts) from Account where Id IN :AccIds]);

        for(Id accId:MapofAcc.keySet()){
                    integer numberOfContactCreat= (MapofAcc.get(accId).Contacts).size();
            if(MapofAcc.get(accId).Max_No_of_Contact_Allowed__c  < numberOfContactCreat){
                system.debug('contact creation is not allowed');
                for(Contact con:cList){
                    if(con.AccountId == accId){
                        con.addError('Contact insertion is not allowed');
                    }
                }
            }

        }
              

        for(Contact con:cList){
            if(MapofAcc.containsKey(con.AccountId)){
                con.MailingStreet = MapofAcc.get(con.AccountId).BillingStreet;
            con.MailingCity = MapofAcc.get(con.AccountId).BillingCity;
            con.MailingCountry  = MapofAcc.get(con.AccountId).BillingCountry;
            con.MailingState = MapofAcc.get(con.AccountId).BillingState;
            con.MailingPostalCode = MapofAcc.get(con.AccountId).BillingPostalCode;
            }
            
            
        }
        
    }
   
}