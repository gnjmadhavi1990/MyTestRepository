public class RetrieveContactClass {
    public list<Contact> contactList{get;set;}
    public list<SelectOption> accountNames{get;set;}
    public string selectedAccount{get;set;}
    public RetrieveContactClass(){
        contactList =new list<Contact>();
        accountNames=new list<SelectOption>();
        accountNames.add(new SelectOption('','--Non--'));
        for(Account acc:[select Id,name from Account  limit 20]){
                    accountNames.add(new SelectOption(acc.Id,acc.Name));

        }
    }
    public pagereference retrieveContact(){
        if(selectedAccount != ''){
            contactList=[select Id,LastName,FirstName,Email,Phone from Contact where accountId=:selectedAccount];
        }
        return null;
    }

}