public class Calculator {
    
    public decimal fnumber{get;set;}
    public decimal snumber{get;set;}
    public decimal result{get;set;}
    public void sum(){
        result=fnumber + snumber;
        
    }
    public void sub(){
        result =fnumber - snumber;
        
    }     public void multi(){
        result =fnumber* snumber;
    }   
    }