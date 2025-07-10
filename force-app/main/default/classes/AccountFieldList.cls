public class AccountFieldList {
    public Account acc{get;set;}
    public list<string> fieldList{get;set;}
    public AccountFieldList(){
        acc=new Account();
        fieldList =new list<string>();
        for(Schema.FieldSetMember memberObj:SobjectType.Account.FieldSets.AccountFieldSet.getFields()){
            fieldList.add(memberObj.getFieldPath());
            
        }
        
    }
    public pagereference saveAccount(){
        insert acc;
        return new pagereference('/'+acc.Id);
    }
}