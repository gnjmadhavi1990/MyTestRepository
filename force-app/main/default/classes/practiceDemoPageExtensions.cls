public class practiceDemoPageExtensions {
    public string searchText{get;set;}
    public list<Account> accList{get;set;}
    
    public practiceDemoPageExtensions(){
        
    }
    public void search(){
        searchText=searchText+'%';
        
       
            accList = [select Name,Id,Rating from Account where Name like :searchText];
    }
 
}