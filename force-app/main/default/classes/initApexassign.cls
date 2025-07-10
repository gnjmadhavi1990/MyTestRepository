public class initApexassign {
    @Auraenabled
    public static list<contact> getCon(Id ParentId ){
        return [SELECT ID, FirstName, LastName, Phone,AccountId from Contact where AccountId =: ParentId];
    }
}