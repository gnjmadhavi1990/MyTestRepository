import {getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement ,api,track,wire} from 'lwc';

export default class WireToFunction extends LightningElement {
    @api recordId;
    @track accounts;
    @track error;
    @wire(getRecord,{recordId:'$recordId',fields:['Account.Name','Account.Phone']})
    wiredAccounts(data,error){
        if(data){
            this.accounts=data;
            this.error=undefined;

        }else if(error){
            this.error=error;
            this.accounts=undefined;
        }
    }
    get getName(){
        return this.accounts.fields.Name.value;
    }get getPhone(){
        return this.accounts.fields.Phone.value;
    }
}