public class LeadTriggerHandler {
    public static void checkCreateBefore(list<Lead> newLead){
        for(Lead lead:newLead){
            if(lead.CreatedDate < System.today() - 8){
                lead.addError('can not modified');
                
            }
        }
    }
    public static void createTaskAfterInsert(list<Lead> leadRec){
        list<Task> taskList =new list<Task>();
        for(Lead leadRecord:leadRec){
            Task taskRec= new Task();
            taskRec.OwnerId= leadRecord.OwnerId;
            taskRec.Status='Not Started';
            taskRec.Subject='Followup the lead ';
            taskRec.Priority='High';
            taskRec.Description='Follow Up';
            taskRec.WhoId= leadRecord.Id;
            taskList.add(taskRec);
        }
        if(!taskList.isEmpty()){
            insert taskList;
        }
            
        
    }
    public static void leadDeleteBefore(list<Lead> leadRec){
        for(Lead lead:leadRec){
            if(lead.Status =='Working - Contacted'){
         lead.Status.addError('Not allow to lead deletion');
            }
        }
        
    }

}