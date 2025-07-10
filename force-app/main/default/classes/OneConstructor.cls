public class OneConstructor {
    
    private string modelNumber;
    private integer numberofFridge;
    private Boolean isOld;
    public OneConstructor(){
        modelNumber='msdi-1322';
        numberofFridge=123;
        isOld=false;
    }
    public void setModelNumber(string theModelnumber){
        theModelnumber=modelNumber;
         }
   public string getModelNumber(){
        return modelNumber;
    }
    public void setNumberofFridge(integer thenumberofFridge){
        thenumberofFridge=numberofFridge;
        
    }
    public integer getNumberofFridge(){
        return numberofFridge;
    }
    public void setOld(Boolean Old){
        isOld=Old;
        
    }

 public Boolean getOld(){
        return isOld;
    }
}