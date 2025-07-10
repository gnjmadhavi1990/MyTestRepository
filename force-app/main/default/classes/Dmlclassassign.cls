public class Dmlclassassign {
            
    Public static void insertacc(string name){
      
        account acc = new account();
        acc.name = name;
        acc.rating = 'Hot';
       
        insert acc;
    }
        Public static void insertcont(string name){
            List<Contact> lcont = new List<Contact>();
        contact con = new contact();
            con.FirstName  = name;
            con.LastName  = 'kumar' ;
            con.AccountId = '0015h00001AFhRKAA1';
            con.phone = '1484545454';
           lcont.add(con);
                insert lcont; 
         
}
    Public static void deletecont(){
        list<contact> lcont = new list<contact>();
        contact racc = new contact();
        racc.Firstname = 'test';
        racc.id = '0035h00000yYuSlAAK';
        lcont.add(racc);
        delete lcont;
    }
     
            
        }