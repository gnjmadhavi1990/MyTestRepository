public class projectApex1 {
    public static void ifworkrequestcreate(list<WorkRequest__c> workrqt){
   list<AssignedWork__c> asswork =new list<AssignedWork__c>();
        
        for(WorkRequest__c workrequest :workrqt  ){
          AssignedWork__c assw = new AssignedWork__c();
            assw.Account__c = workrequest.Account__c;
            assw.Name = 'assigned'+ workrequest.Name;
            assw.Status__c = 'New';
            asswork.add(assw);
          }
            if(!asswork.isEmpty()){
                insert asswork;
            }
    }
    public static void ifresourcupdate(list<AssignedWork__c> asswork,list<Resource__c> resource,Map<id,Resource__c> resMap){
    
        AssignedWork__c ass = new AssignedWork__c();
         if(ass.Status__c == 'Assigned'){
        for(Resource__c res : resource  ){
            
            if(res.Current_Status__c == 'Not Engaged' && resMap.get(res.id).Current_Status__c == 'Engaged')
            {
                update res;
            }
            }
        }
    }
}