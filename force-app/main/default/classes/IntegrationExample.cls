public class IntegrationExample {
    public static void HTtpMethod(){
        Http http=new Http();
        HttpRequest req= new HttpRequest();
        req.setEndpoint('callout:GlobalWarm/api/temperature-api');
      //  req.setEndpoint('https://global-warming.org/api/temperature-api');
        req.setMethod('GET');
        HttpResponse res=http.send(req);
        if(res.getStatusCode() ==200){
            system.debug('make a callout to ExternalSystem:'+res.getBody());
        }
        
        
    }

}