public with sharing class getRecords {
@Auraenabled(cacheable=true)
    Public static list<account> getACC(Id accId){
        return [select Id, Name from Account Where Id =: accId];
    } 
}