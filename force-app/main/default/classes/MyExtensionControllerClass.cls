public class MyExtensionControllerClass {
    private final Account acct;
    public MyExtensionControllerClass(ApexPages.standardController stdController){
        this.acct=(Account)stdController.getRecord();
    }
    public string getGreeting(){
        return 'Hello' +acct.Name+'('+acct.Id+')';
    }
}