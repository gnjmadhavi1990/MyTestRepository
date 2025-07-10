public class setOpp {

    Public static void addsetvalues(){
        set<string> sstr = new set<string>();
        sstr.add('apple');
        sstr.add('mongo');
        sstr.add('grapes');
        system.debug('set values are'+sstr);
    }
    public static void deletesetvalues(){
        set<string> sstr = new set<string>();
        sstr.add('apple');
        sstr.add('mongo');
        sstr.add('grapes');
        sstr.remove('mongo');
        system.debug('delete set values are'+sstr);
    }
}