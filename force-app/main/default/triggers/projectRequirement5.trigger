trigger projectRequirement5 on AssignedWork__c (after update) {
    list<Resource__c> addRes = new list<Resource__c>();
    if(trigger.isupdate){
        list<AssignedWork__c> ass = Trigger.new;
        ass = [select Account__c,Resources_Name__c,Status__c from AssignedWork__c ];
    for(AssignedWork__c assr: ass)
     {
list<Resource__c> reslist = [Select Name,Gender__c , Current_Status__c	,No_of_Request_finished__c from Resource__c];
list<AssignedWork__c> asslist=new list<AssignedWork__c>();
         AssignedWork__c assign = new AssignedWork__c();
    for(Resource__c res : reslist) {
        if(assign.Status__c == 'Finished'){
            res.No_of_Request_finished__c= asslist.size();
            addRes.add(res);
        }
        if(addRes != null)
        {
            update addRes;
        }  
    }}}}