public class createConassign {
    @Auraenabled
    public static string createCon(Contact con){
        system.debug('contact::'+con.firstname);
        insert con;
        return con.Id;
    }
}