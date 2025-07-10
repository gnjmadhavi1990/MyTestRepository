public class IntegrationCallOut {
    public static void makeCallout(){
        Http http=new Http();
        HttpRequest req=new HttpRequest();
        req.setEndpoint('https://global-warming.org/api/temperature-api');
        req.setMethod('GET');
        HttpResponse res=http.send(req);
        if(res.getStatusCode() == 200){
            system.debug('Made a Callout'+res.getBody());
        }
    }

}