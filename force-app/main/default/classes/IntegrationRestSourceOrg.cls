@RestResource(urlMapping='/GetAccountClass/')
global class IntegrationRestSourceOrg {
    @httpget
    global static Account getAcc(){
        Account acc= [select Id,Name from Account where Id='0015h000017n4TZAAY'];
        return acc;
    }

}