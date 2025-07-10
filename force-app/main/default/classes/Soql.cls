public class Soql {
    
    public static list<account> getacc(string Industry){
    list<Account> acc = [select Name, AccountNumber, Industry, Phone, Rating from Account where Industry = :Industry ];
        for(Account Iacc : acc){
                    system.debug(+Iacc.Industry);

        }
        return acc;
       
        }
    
}