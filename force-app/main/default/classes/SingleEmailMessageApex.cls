public class SingleEmailMessageApex {
    public static void sendingSingleEmail(){
        Messaging.SingleEmailMessage smail= new Messaging.SingleEmailMessage();
        list<string> sentEmails=new list<string>{'mdvgnj123@gmail.com','madhavig108@gmail.com'};
            smail.setToAddresses(sentEmails);
            smail.setSubject('Test Mail for Singl Email Message');
        smail.setPlainTextBody('Hello How are you Doing? Welcom to Single Email Message');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{smail});
    }

}