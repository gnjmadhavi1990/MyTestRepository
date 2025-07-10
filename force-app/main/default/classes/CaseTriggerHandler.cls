public class CaseTriggerHandler {
    public static void deleteCaseBefore(list<Case> caseRecord){
        Id currentUserId = UserInfo.getProfileId();
        Id systemAdminId = [select Id, Name from Profile where Name ='System Administrator'].Id;
        for(Case caseList: caseRecord){
            if(systemAdminId != currentUserId){
                caseList.addError('You Do Not have the Right to Delete');
            }
        }
        
    }

}