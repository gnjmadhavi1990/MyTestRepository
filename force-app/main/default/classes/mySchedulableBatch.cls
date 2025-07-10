public class mySchedulableBatch implements schedulable{
    public void execute(schedulableContext SC){
        myBatchClass Obj = new myBatchClass();
        Database.executeBatch(Obj);
    }
}