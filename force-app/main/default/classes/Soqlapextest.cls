@istest
public class Soqlapextest {
    @testsetup
    
    public static void setuptestdata(){
       list<account> acc = new list<account>();
         account racc = new account();
        racc.Name = 'Mady account';
        racc.Rating = 'Hot';
        acc.add(racc);
        racc = new account();
        racc.Name = 'ramana account';
        racc.Rating = 'Hot';
        acc.add(racc);
        racc = new account();
        racc.Name = 'macharla account';
        racc.Rating = 'Hot';
        acc.add(racc);
        insert acc;
    }
    
    @istest
    private static void getacctest(){
         list<account> acc = new list<account>();
       acc = Soql.getacc('Hot');
        system.assertEquals(acc.size(),2 );
        
    }

}