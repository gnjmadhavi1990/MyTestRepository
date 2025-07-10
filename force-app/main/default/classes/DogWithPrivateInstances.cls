public class DogWithPrivateInstances {
            private string name;
    private integer age;
    public void setName(string name){
        this.name=name;
    }
    public void setAge(integer age)
    {
        if(age<=10){
            system.debug('Stop It');
            this.age=10;
        }
        else{
            this.age=age;
        }
    }
        public string getName(){
            
            return name;
        }
    public integer getAge(){
        return age;
    }
    }