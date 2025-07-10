@RestResource(urlMapping='/AccountContactApi')
global class ApexRestApi {
    @httpPost
    global static void getAcc(){
            RestRequest req=RestContext.request;
        string body=req.requestBody.toString();
        JsonClass obj=(JsonClass)JSON.deserialize(body,JsonClass.class);
        system.debug('Name'+obj.CustomerName+'account'+obj.isAccount);
        if(obj.isAccount ==true){
            Account acc=new Account(Name=obj.CustomerName);
            insert acc;
            
        }else if(obj.isAccount==false){
            Contact con=new Contact(lastName= obj.CustomerName);
            insert con;
            
        }
    }
}