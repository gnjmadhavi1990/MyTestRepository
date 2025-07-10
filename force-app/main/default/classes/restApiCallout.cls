public class restApiCallout {
    public static HttpResponse makeGetCallout(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('Get');
        HttpResponse response = http.send(request);
        if(response.getStatusCode()== 200){
            map<string,object> results = (map<string,object>) JSON.deserializeUntyped(response.getBody());
            list<object> animals =(list<object>) results.get('animals');
            system.debug('animals:');
            for(object animal : animals){
            system.debug(animal);
            }
        }
        return response;
                            
    }

}