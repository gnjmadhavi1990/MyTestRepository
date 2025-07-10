public class IntegrationCalloutAuthentication {
    public static void makeCallout(){
        Http http =new Http();
        HttpRequest req= new HttpRequest();
        req.setEndpoint('https://api.spoonacular.com/recipes/complexSearch?apiKey=21fb0499af3e411bab6bf8eae342acaa');
            req.setMethod('GET');
        HttpResponse res=http.send(req);
                system.debug('the status code :'+res.getStatusCode());

        if(res.getStatusCode() == 200){
            system.debug('made a call out'+res.getBody());
        }
    }

}