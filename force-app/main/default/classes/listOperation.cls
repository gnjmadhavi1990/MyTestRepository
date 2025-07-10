public class listOperation {
    private list<string> lstr = new list<string>();
    public list<string> addtolist(string value){
        lstr.add(value);
         return lstr;   
       
    }
         public string readfromlist(integer index){
             string res = lstr.get(index);
             return res;
         }

         public list<string> editfromlist(integer index, string value){
             lstr.set(index,value);
             return lstr;
}
             public list<string> deletefromlist(integer index){
                 lstr.remove(index);
                 return lstr;
             }
}