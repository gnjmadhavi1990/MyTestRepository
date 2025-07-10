@istest
public class Accountcreateapextest {
    @testsetup
    private static void setupdata(){
        list<account> lacc = new list<account>();
        account racc = new account();
        racc.Name = 'test1';
        racc.rating = 'Hot';
        lacc.add(racc);
        insert lacc;
    }
    
    @istest
    private static void ifacccreatetest(){
        list<account> lacc = new list<account>();
        account racc = new account();
        racc.Name = 'test1';
        racc.rating = 'Hot';
        lacc.add(racc);
        lacc = accountcreateapex.ifacccreate(lacc);
        system.assertEquals(lacc[0].description, 'Account is created');
    }
    @istest
    public static void ifaccupdatetest(){
      list<account> lacc = new list<account>();
        account racc1 = new account();
        account racc = [select id,name,rating,description from account where name =  'test1' limit 1];
        lacc.add(racc);
        racc1.id = racc.id;
        racc1.name ='test1';
        racc1.rating = 'Warm';
        Map<id,account> macc = new Map<id,account>();
        macc.put(racc.id,racc1);
        lacc = accountcreateapex.ifaccupdate(lacc,macc);
        system.assertEquals(lacc[0].description, 'rating changed into warm to hot');
    }
}