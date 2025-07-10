public class extensioncontrollerclass {
    
    public id accid {set;get;}
        public string accname {set;get;}
            private final account acct;
    public extensioncontrollerclass(apexpages.StandardController controller){
        this.acct = (account)controller.getRecord();
    }
    public  void showacc(){
        system.debug(acct);
        account racc =[select Id, name, rating ,industry from account where id =:accid limit 1];
        accname= racc.name;
      
        
    }
  
  Public static void insertrecord(list<account> acc){
      list<contact> con = new list<contact>();
      for(account a : acc){
          contact c = new contact();
          c.Lastname='contact'+a.Name;
              c.accountid =a.id;
           con.add(c);
      }
    insert con;
}
}