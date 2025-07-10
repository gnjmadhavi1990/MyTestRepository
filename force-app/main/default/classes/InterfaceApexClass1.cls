public class InterfaceApexClass1 implements InterfaceApex{
    
     private string getName;
    private integer getAge;
    private integer getNumber;
    private string getDesignation;
     public InterfaceApexClass1(string n,integer a,integer Num,string des){
        this.getName=n;
        this.getAge=a;
        this.getNumber=Num;
        this.getDesignation=des;
    }
    public string getName(){
       
       return getName;
        
    }
    public integer getAge(){
        
        return getAge;
        
    }
    public integer getNumber(){
        
        return getNumber;
    }
    public string getDesignation(){
       
        return getDesignation;
    }
    

}