public class projectSchedule implements Schedulable {
    public void execute(schedulableContext SC){
        projectBatch1 Obj = new projectBatch1();
        Database.executeBatch(Obj);
    }

}