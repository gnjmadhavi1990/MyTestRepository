public class Sosl {
         
    public static void getacc(string name){
list<list<sobject>> llist = [Find 'test' in all fields returning account(ID, Name, Rating), Contact(ID, Name), Opportunity(Id, Name)];

        list<account> lacc = llist[0];
      for(account racc : lacc){
            system.debug('account name:'+racc.name);
            
        }
    }
    
    public static void getcont(string name){
list<list<sobject>> llist = [Find 'test' in all fields returning account(ID, Name, Rating), Contact(ID, Name), Opportunity(Id, Name)];

        list<contact> lcon = llist[1];
      for(contact racc : lcon){
            system.debug('contact name:'+racc.name);
      }
      }
    public static void getOpp(string name){
list<list<sobject>> llist = [Find 'test' in all fields returning account(ID, Name, Rating), Contact(ID, Name), Opportunity(Id, Name)];

        list<Opportunity> lopp = llist[2];
      for(Opportunity racc : lopp){
            system.debug('Opportunity name:'+racc.name);
      }
    }
}