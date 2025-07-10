public class apexQueueable implements Queueable{
    public void execute(QueueableContext context){
        List<Account> acc = new List<Account>();
        acc = [select Id,Name,Rating,Industry from Account limit 5];
        acc = accountcreateapex.ifacccreate(acc);
        system.debug(acc);
    }

}