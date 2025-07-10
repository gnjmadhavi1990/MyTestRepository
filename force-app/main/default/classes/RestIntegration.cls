public class RestIntegration {
    public static void callOut(){
        Http http=new Http();
        HttpRequest req=new HttpRequest();
        req.setEndpoint('https://reqres.in/api/users?page=2');
        req.setHeader('Content-Type','application/json;charset=UTF-8');
        req.setMethod('GET');
        HttpResponse res=http.send(req);
        system.debug('details:'+res.getStatusCode());
        if(res.getStatusCode() == 200){
                    system.debug('body:'+res.getBody());

        }
    }

}