public class projectApex5 {
    public static void updateStatus(){
        list<AssignedWork__c> ass = Trigger.new;
        ass = [select Account__c,Resources_Name__c,Status__c from AssignedWork__c ];
        for(AssignedWork__c updateass : ass){
            if(updateass.Status__c=='Finished'){
                list<Resource__c> res=[select Gender__c,Name,Current_Status__c from Resource__c ];
                for(Resource__c updateres : res){
                    updateres.Current_Status__c = 'Engaged';
                
                    
                }
                update res;
            }
        }
    }

}