public class AsynQueueableCon implements Queueable{
    private Contact con;
    private string IndustryValue;
    public AsynQueueableCon(Contact cons,string Industry){
        this.con=cons;
        this.IndustryValue=Industry;
        
    }
    public void execute(QueueableContext qc){
        list<Account> accList=[select Id,Industry from Account where Industry=:IndustryValue];
      list<Contact> conList=new list<Contact>();
        for(Account acc: accList){
            Contact c  = con.clone(false,false,false,false);
            c.AccountId=acc.Id;
            conList.add(c);
        }
        if(!conList.isEmpty()){
            insert conList;
        }
    }

}