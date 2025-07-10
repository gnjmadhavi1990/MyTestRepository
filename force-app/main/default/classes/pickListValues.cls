public class pickListValues {
    
    @Auraenabled
    public static Map<string,string> picklistValueInfo(){
        Map<string,string> dummyValuesMap=new Map<string,string>();
        for(Contact conObj:[select Id,Name from Contact limit 10]){
            dummyValuesMap.put(conObj.Id,conObj.Name);
            
    }
return dummyValuesMap;
        }
}