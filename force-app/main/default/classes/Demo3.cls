public class Demo3 {
    public string hellworldString;                  //instance Variable
    private static final string DEFAULT_STRING;            //static variable
    static{
        DEFAULT_STRING='Hello World';                       //static Intializer
        
    }
    public Demo3(){                                            //Constructor
        this(DEFAULT_STRING);
    }
    public Demo3(string displayString){                        //Overloaded Constructor
        this.hellworldString=displayString;
    }
    public void printOutput(){                                   //instance Method
        system.debug('display Output:'+hellworldString);
    }
    public static void printOutput1(){                   //static Method
 system.debug('display Output')  ;      
    }
}