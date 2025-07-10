import { getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement ,wire ,api} from 'lwc';

export default class WireComponent extends LightningElement {
    @api recordId;
    @wire(getRecord,{recordId:'$recordId',fields:['Account.Name','Account.Phone']}) Accounts;
get getName(){
    if(this.Accounts.data){
    return getFieldValue(this.Accounts.data,'Account.Name');
    }
    else if(this.Accounts.error){
       return this.Accounts.error;
    }
}
get getPhone(){
    if(this.Accounts.data){
    return getFieldValue(this.Accounts.data,'Account.Phone');
}else if (this.Accounts.error){
   return this.Accounts.error;
}
}

}