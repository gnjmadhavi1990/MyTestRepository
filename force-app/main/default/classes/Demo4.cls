public class Demo4 {
    public void mainValueMethod(){                      //passby Value
        string websiteUrl='www.apexhours.com';
        system.debug('before pass value:'+websiteUrl);
        passByValue(websiteUrl);
        system.debug('after Pass value:'+websiteUrl);
    }
    private void passByValue(string websiteValue){
       websiteValue='www.salesforce.com';
    }
    public void mainReferenceMethod(){
        account a=new account();
        a.Name='test Account';
        a.website='www.salesforce.com';
        system.debug('before reference Value:'+a);
        passByCall(a);
        system.debug('after reference value:'+a);
        
        
    }
    private void passByCall(account a){
       a.Website='www.apexhoursa.com';
    }
}