import { LightningElement,wire } from 'lwc';
import getaccount from '@salesforce/apex/getAccountsLwc.getaccounts';
const columns =[{label:'Name',fieldName:'Name'},{label:'Rating',fieldName:'Rating'}];
export default class WireFunction extends LightningElement {
    accdata;
    accerror;
    columns = columns;
    @wire(getaccount)
    accounts({error,data}){
        if(data){
            this.accdata = data;

        }else if(error){
            this.accerror = error;
        }
    }
}