public class apextest {    
    public static void updateacc(){
Account a1 = new account(name='MyAccount');
Account a2 = new account(name='MyAccount');

// Add both accounts to the new set 
Set<Account> accountSet = new Set<Account>{a1, a2};

// Verify that the set only contains one item
    System.assertEquals(accountSet.size(), 3);
    }}