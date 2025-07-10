public class ActionPollerClass {
    integer count = 0;
    public pagereference incrementCount(){
        count++;
        return null;
    }
    public integer getCount(){
        return count;
    }
}