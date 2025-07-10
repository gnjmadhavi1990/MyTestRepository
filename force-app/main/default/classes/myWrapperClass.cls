public class myWrapperClass {
 public List<wrapAccount> wrapAccountList ;
    public List<Account> selectedAccounts;
     
    public myWrapperClass(){
        if(wrapAccountList == null) {
            wrapAccountList = new List<wrapAccount>();
            for(Account a: [select Id, Name,BillingState, Website, Phone from Account limit 10]) {
           wrapAccountList.add(new wrapAccount(a));
            }
        }
    }
 
    public void processSelected() {
    selectedAccounts = new List<Account>();
     for(wrapAccount wrapAccountObj : wrapAccountList) {
            selectedAccounts.add(wrapAccountObj.acc);
            system.debug(wrapAccountObj.selected);
            
        }
        system.debug(selectedAccounts);
    }
  public class wrapAccount {
        public Account acc ;
        public Boolean selected;
 
        public wrapAccount(Account a) {
            acc = a;
            selected = false;
        }
    }
}