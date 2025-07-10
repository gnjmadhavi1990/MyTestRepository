public class practiceApex1 {
    public static void listsort(){
List<SelectOption> options = new List<SelectOption>();
options.add(new SelectOption('A','United States'));
options.add(new SelectOption('C','Canada'));
options.add(new SelectOption('A','Mexico'));
     
options.sort();
System.debug('After sorting: ' + options);   
}
}