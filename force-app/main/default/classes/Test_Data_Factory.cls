@isTest
public class Test_Data_Factory {
    public static Account prepareAccount(boolean isInsert){
        Account acc=new Account();
        acc.Name='Salesforce1';
        acc.Type='Prospect';
        if(isInsert){
            insert acc;
        }
        return acc;
    }
}