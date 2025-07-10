public class AsynQueueableClass implements Queueable{
    private list<Account> accList;
    private Id parentAccId;
    public AsynQueueableClass(list<Account> accRec,Id id){
        this.accList  = accRec;
        this.parentAccId = id;
    }
    public void execute(QueueableContext qc){
        for(Account acc: accList){
            acc.ParentId = parentAccId;
        }
        update accList;
    }

}