public class MyDemo {

    public static void updateDisc(){
        list<Account> accList = [select Id, Name, Rating from Account where createdDate=THIS_YEAR];
        if(!accList.isEmpty()){
            for(Account acc: accList){
                if(acc.Rating =='Hot'){
                    acc.Description ='First Priority';
                    
                }
                else if(acc.Rating =='Warm'){
                    acc.Description= 'Last Priority';
               
                }
            }
        }
        if(!accList.isEmpty()){
            update accList;
        }
        
        
    }
}