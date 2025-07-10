public class ManyConstructor {
    
    private string name;
    private integer age;
    private string designation;
    public ManyConstructor(){
        name='Madhavi';
        age=30;
        designation='Salesforce Developer';
        
    }
    public ManyConstructor(string name,integer age,string designation){
        this.name=name;
        this.age=age;
        this.designation=designation;
        
    }
    public string getName(){
        return name;
        
    }public integer getAge(){
        return age;
        
    }
    public string getDesignation(){
        return designation;
    }
}