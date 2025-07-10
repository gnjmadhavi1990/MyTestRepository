@RestResource(urlMapping='/GetAccountClass/*')
global class ApexRestCallout {
@httpGet
    global static list<Account> getAcc(){
         RestRequest req = RestContext.request;
        Map<string,string> mapData = req.params;
        
        String myRec = mapData.get('sfId');
        system.debug('Record ID:'+myRec);
        list<Account> accList = [select Id,Name from Account];
        return accList;
    }
}