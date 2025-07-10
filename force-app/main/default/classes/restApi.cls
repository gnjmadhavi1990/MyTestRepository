@RestResource(urlMapping='/AccountList/')
global class restApi {
    @httpGet
    global static list<Account>  getAccounts(){
        Map<string,string> paramsRest = RestContext.request.params;
        string accIndustry = paramsRest.get('Industry');
        list<Account> accList = [select Id, Name, Industry from Account where industry =:accIndustry ];
        return accList;
    }

}