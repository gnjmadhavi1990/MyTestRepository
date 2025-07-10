global class InboundEmailApex implements Messaging.InboundEmailHandler{
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.InboundEnvelope envelope){
        Messaging.InboundEmailResult result=new Messaging.InboundEmailResult();
        string accName=email.fromName;
        string accInd=email.subject;
        string accdes=email.plainTextBody;
        Account acc=new Account(Name=accName,Industry=accInd,Description=accdes);
        insert acc;
        return null;
    }

}