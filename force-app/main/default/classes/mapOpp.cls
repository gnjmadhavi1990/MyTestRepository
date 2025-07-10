public class mapOpp {

    private map<integer,string> mstr = new map<integer,string>();
    public void addmapvalues(){
        mstr.put(1,'one');
        mstr.put(2,'two');
        mstr.put(3,'three');
        mstr.put(4,'four');
        mstr.put(5,'five');
        system.debug(mstr);
    }
    public void readfrommapvalues(){
       string value = mstr.get(2);
        system.debug(value);
    }
    public void deletefrommapvalues(){
        string value = mstr.remove(3);
        system.debug(value);
    }
}