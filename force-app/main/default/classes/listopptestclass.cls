@istest
       public class listopptestclass {
           
           @istest
           private static void addtolisttest(){
               listOperation obj = new listOperation();
               list<string> lstr = new list<string>();
              lstr = obj.addtolist('Apple');
               system.assertequals(lstr[0],'Apple');
           }
           @istest
           private static void readfromlisttest(){
               listOperation obj = new listOperation();
               list<string> lstr = new list<string>();
              lstr = obj.addtolist('Apple');
               string str = obj.readfromlist(0);
                system.assertEquals(str, 'Apple');
           }
           @istest
           private static void editfromlisttest(){
               listOperation obj = new listOperation();
               list<string> lstr = new list<string>();
            obj.addtolist('Apple');
              lstr = obj.editfromlist(0,'Bat');
               system.assertEquals(lstr[0],'Bat');
           }
           @istest
           private static void deletefromlisttest(){
               listOperation obj = new listOperation();
               list<string> lstr = new list<string>();
            obj.addtolist('Apple');
                           obj.addtolist('Bat');
                 obj.addtolist('Cat');
             lstr = obj.deletefromlist(0);
               system.assertEquals(lstr[0], 'Bat');
           }
}