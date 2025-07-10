public class makeGetCallout {
    public static HttpResponse makeGetCallouts(){
        Http http =new Http();
        HttpRequest req=new HttpRequest();
        req.setEndPoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setMethod('GET');
        HttpResponse res=http.send(req);
        if(res.getStatusCode() == 200){
            Map<string,object> results=(Map<string,object>) JSON.deserializeUnTyped(res.getBody());
            list<object> animals=(list<object>)results.get('animals');
            system.debug('Animal Names:');
            for(Object animal:animals){
                system.debug(animal);
            }
        }return res;
    }
    public static HttpResponse makePostCallout(){
        Http http=new Http();
        HttpRequest req=new HttpRequest();
        req.setEndPoint('https://th-apex-http-callout.herokuapp.com/animals');
        req.setMethod('POST');
        req.setHeader('Content-Type','application/JSON;charset=UTF-8');
        req.setBody('{"name":"Tiger King"}');
        HttpResponse res=http.send(req);
        if(res.getStatusCode() != 201){
            
            system.debug('The status code is not Expected:'+res.getStatusCode()+''+res.getStatus());
            
        }else{
            system.debug(res.getBody());
        }
    return res;
    }}