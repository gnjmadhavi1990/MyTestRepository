import { LightningElement ,wire} from 'lwc';
import getSobjectValue from '@salesforce/apex';
import getAccount from '@salesforce/apex/dragAndDrop.getAccount';
import getAccountId from '@salesforce/apex/dragAndDrop.getAccountId';
import getContacts from '@salesforce/apex/dragAndDrop.getContacts';
import NAME_FIELD  from '@salesforce/schema/Account.Name';
export default class ApexDemoLwc extends LightningElement {
 results;
 contacts;
 get name(){
    return this.wireGetAccounts.data ? getSobjectValue(this.wireGetAccounts.data[0],NAME_FIELD):''
 }
 @wire(getAccountId,{accId:'0015h000016NfteAAC'})
wireGetAccounts;



@wire(getAccount)
wireAccounts({data,error}){

if(data){
    this.results=data;
}
if(error){
    console.error(error);
}}
handleLoad(){
    getContacts().then(result => {
        this.contacts = result   ;
     }) .catch(error =>{
        this.error=error;
    });

    
}

}