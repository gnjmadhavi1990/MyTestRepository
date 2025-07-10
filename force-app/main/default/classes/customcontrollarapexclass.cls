public class customcontrollarapexclass {

    public id accid {set;get;}
    public string accname  {set;get;}
    
    public void getacc(){
        
        account racc = [select id,name from account where Id = :accid limit 1];
        accname = racc.name;
    }
}