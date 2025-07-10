public class CalculatorApexController {
    @Auraenabled
    public static decimal calculatorValues(decimal firstnumber ,decimal secondnumber){
        
        decimal sum = firstnumber + secondnumber;
        return sum;
        
        
    }

}