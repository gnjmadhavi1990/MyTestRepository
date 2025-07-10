public class ContactWrapperClass {
    public list<ContactWrapper> contactWrapperList {get; set;}
    public list<ContactWrapper> selectedRecordsList{get;set;}
    public ContactWrapperClass(){
       contactWrapperList =new list<ContactWrapper>();
        selectedRecordsList =new list<ContactWrapper>();
        ContactWrapper conObj=new ContactWrapper();   
        conObj.contactLastName='Sai';
        conObj.contactFirstName='Ram';
         conObj.isChecked=false;
        contactWrapperList.add(conObj);
        ContactWrapper conObj1 =new ContactWrapper();
        conObj1.contactLastName='Hari';
        conObj1.contactFirstName='Om';
         conObj1.isChecked=false;
            contactWrapperList.add(conObj1);
        for(Contact conOb:[select Id,LastName,FirstName,AccountId from Contact limit 10]){
            ContactWrapper con = new ContactWrapper();
            con.contactLastName=  conOb.LastName;
                con.contactFirstName = conOb.FirstName;  
            con.isChecked=false;
            contactWrapperList.add(con);
        }
        
    }
    public void displaySelectedRecords(){
        selectedRecordsList =new list<ContactWrapper>();
        for(ContactWrapper conObj3:contactWrapperList){
            if(conObj3.isChecked){
                selectedRecordsList.add(conObj3);
                
            }
        }
    }
    public class ContactWrapper{
        public boolean isChecked{get;set;}
        public string contactFirstName {get; set;}
        public string contactLastName {get; set;}
               
    }

}