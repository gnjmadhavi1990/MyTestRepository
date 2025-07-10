public class OpportunityTriggerHandler {
      
    public static void updateOppAfter(list<Opportunity> newOpp, Map<Id,Opportunity> oldOpp){
        list<Task> taskList =new list<Task>();
        for(Opportunity opp: newOpp){
            if(opp.StageName != oldOpp.get(opp.Id).StageName){
                if(opp.StageName == 'Qualification' && oldOpp.get(opp.Id).StageName == 'Perception Analysis' || opp.StageName == 'Prospecting' && oldOpp.get(opp.Id).StageName == 'Perception Analysis' ){
                Task reminderTask =new Task();
                reminderTask.WhatId= opp.Id;
                reminderTask.Description=' Please Process the Opportunity';
                reminderTask.isReminderSet = true;
                reminderTask.ReminderDateTime= System.today() + 1;
                reminderTask.Priority='High';
                reminderTask.Status= 'In Progress';
               
                reminderTask.Subject='Reminder Task for Opp';
                taskList.add(reminderTask);
            }
}
                    }
        if(!taskList.isEmpty()){
            insert taskList;
        }
        
    }
    public static void addTeamMembers(list<Opportunity> newRec, Map<Id,Opportunity> OldValues){
        list<OpportunityTeamMember> oppTem=new list<OpportunityTeamMember>();
        list<User> Opportunits =[select Id,Name, UserRole.Name from User where UserRole.Name='Opportunists'];
        for(Opportunity opp: newRec){
            if(opp.StageName == 'Needs Analysis' && opp.StageName != oldValues.get(opp.Id).StageName){
                for(User Users:Opportunits){
                    OpportunityTeamMember oppMem=new OpportunityTeamMember();
            oppMem.OpportunityId=opp.Id;
            oppMem.OpportunityAccessLevel='Edit';
            oppMem.UserId= Users.Id;
                    oppTem.add(oppMem);
                }
                 
            }
            
            }if(!oppTem.isEmpty()){
                insert oppTem;
        }
        
    }
    public static void CreateTaskAfterUpdate(list<Opportunity> oppList){
                    list<Task> taskList = new list<Task>();
          list<OpportunityTeamMember> oppteamMem= new list<OpportunityTeamMember>();
        list<Id> listofID=new list<Id>();
        for(Opportunity oppRecord : oppList){
            listofID.add(oppRecord.Id);
        }
        
        list<OpportunityTeamMember> deleteMemberList=[select Id,OpportunityId From OpportunityTeamMember where OpportunityId IN :listofID];
        
        for( Opportunity oppRecord : oppList){
            Task task = new Task();
            if(oppRecord.StageName =='Closed Won'){
                task.OwnerId= oppRecord.OwnerId;
                task.Status= 'High';
                task.Subject= 'Call';
                task.WhatId = oppRecord.Id;
                taskList.add(task);
            }
            else if(oppRecord.StageName == 'Closed Lost'){
                for(OpportunityTeamMember teamMember: oppteamMem){
                    if(teamMember.OpportunityId == oppRecord.Id ){
                        deleteMemberList.add(teamMember);
                    }
                  
                }
            }
            
        }
        if(!taskList.isEmpty())
            insert taskList;
        if(!deleteMemberList.isEmpty()){
            delete deleteMemberList;
        }
    }
    public static void OppUpdateBefore(list<Opportunity> newRecords, Map<Id,Opportunity> oldValues){
        for(Opportunity newOpp: newRecords){
            if(oldValues.get(newOpp.Id).StageName != newOpp.StageName){
                newOpp.Amount=  newOpp.ExpectedRevenue * newOpp.Probability ;
            }
        }
   }
    
    public static void deleteOppTaskAfter(list<Opportunity> oppList){
        list<Task> taskList=new list<Task>();
        for(Opportunity opp:oppList){
            Task task=new Task();
            task.OwnerId= opp.OwnerId;
            task.Subject='Investigation about Deletion';
            task.Priority='High';
            task.WhatId = opp.AccountId;
            task.Status='In Progress';
            taskList.add(task);
        }
        if(taskList != null){
            insert taskList;
        }
        
        
    }
}