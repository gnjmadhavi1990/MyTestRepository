public class LightningExamples {
    @Auraenabled
    public string name{get;set;}
     @Auraenabled
    public string srnumber{get;set;}
     @Auraenabled
    public string Industry{get;set;}
     @Auraenabled
    public string companyName{get;set;}
     @Auraenabled
    public list<Account> accList{get;set;}
     @Auraenabled
    public  static  LightningExamples getDetails(){
        LightningExamples lightningProp =new LightningExamples();
        lightningProp.accList=new list<Account>();
        for(account accobj:[select Id,Name ,Industry,Type from Account ]){
            lightningProp.accList.add(accobj);
            
        }
        lightningProp.Name='Madhavi';
        lightningProp.srnumber='12345';
        lightningProp.Industry='Healthcare';
        lightningProp.companyName='The Dollar Business';
        return lightningProp;
        
        
    }

}