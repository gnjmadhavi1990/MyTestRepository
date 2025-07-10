public class projectApex2 {

    public static void ifresourcupdate(list<Resource__c> resource,Map<id,Resource__c> resMap){
        list<AssignedWork__c> asswork = new list<AssignedWork__c>(); 
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