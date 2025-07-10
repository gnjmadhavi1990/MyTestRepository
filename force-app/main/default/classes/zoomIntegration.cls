public class zoomIntegration {
    public  static void populateWrapperClass(){
        zoomIntegration.wrapperMeeting wrap=new zoomIntegration.wrapperMeeting();
        wrap.durationOfMeeting=60;
        wrap.startTime='2024-12-14T20:30:05z';
        wrap.timeZoneOfMeeting='Asia/kolkata';
        wrap.topicOfMeeting='Salesforce';
        wrap.typeOfMeeting=2;
        string Jsonstring=JSON.serialize(wrap);
        makeMeeting(Jsonstring);
    }
    public static void makeMeeting(string jsonBody){
        
        HttpRequest req=new HttpRequest();
        req.setBody(jsonBody);
        req.setMethod('POST');
        req.setHeader('content-type','application/json');
        req.setEndpoint('callout:ZoomIntegration/v2/users/me/meetings');
        Http http=new Http();
        HttpResponse res=http.send(req);
        system.debug('status code:'+res.getStatusCode());
        if(res.getStatusCode() == 201){
            system.debug('sucess');
        }
        else{
            system.debug('failure');
        }
    }
    public class wrapperMeeting{
        public string topicOfMeeting{get;set;}
        public Integer typeOfMeeting{get;set;}
        public string timeZoneOfMeeting{get;set;}
        public Integer durationOfMeeting{get;set;}
        public String startTime{get;set;}
    }
}