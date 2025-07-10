public class AddTwoNumClass {
    @AuraEnabled
    public static decimal addTwoNumer(decimal fn,decimal sn){
        decimal sum= fn + sn;
        return sum;
    }

}