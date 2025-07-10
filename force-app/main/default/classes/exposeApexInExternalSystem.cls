@RestResource(urlMapping='/getDataFromOurSystem/*')

global class exposeApexInExternalSystem {
    
    @httpget
    
    global static list<Contact> getContacts(){
        RestRequest req= restContext.request;
        Map<string,string> mapOfData=req.params;
        string myRecordId=mapOfData.get('sfId');
        string Email=mapOfData.get('email');
        system.debug('passed record:'+myRecordId);
        system.debug('passed Email:'+Email);
 
        list<Contact> conList= [select Id,Name from Contact];
        return conList;
    }
    
    

}