public class AsynSchedulableOpp implements Schedulable {
    public void execute(SchedulableContext sc){
        list<Opportunity> oppList = [select Id ,Name,CloseDate,OwnerId from Opportunity where isClosed=false and CloseDate < Today];
       list<Task> taskList=new list<Task>();
          if(!oppList.isEmpty()){
                for(Opportunity opp: oppList){
                   Task task=new Task();
                        task.OwnerId = opp.OwnerId;
                        task.WhatId=Opp.Id;
                        task.Priority='High';
                        task.Status='In Progress';
                        task.Subject='Reminder Task';
                        taskList.add(task);
                    }
                    
        }
        if(!taskList.isEmpty()){
             insert taskList;
        }
       
    }

}