global class ApexSoapApi {
    webservice static string getAccCon(string Name, boolean isAccount){
        if(isAccount==true){
              Account acc= new Account(Name=Name);
            insert acc;
            return acc.Id;
        }else{
            Contact con = new Contact(LastName = Name);
        insert con;
        return con.Id;
        }
            
      
        
        
    }

}