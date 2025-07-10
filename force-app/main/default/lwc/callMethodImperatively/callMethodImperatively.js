import { LightningElement,api,track,wire } from 'lwc';
import getaccount from '@salesforce/apex/GetaccountLwc.getaccounts';
const columns =[{ label:'Name',fieldName:'Name'},{label:'Rating',fieldName:'Rating'},{label : 'Phone',fieldName:'Phone'}];
export default class CallMethodImperatively extends LightningElement {
    error;
    searchkey='';
    accounts;
    columns = columns;
    handleonchange(event){
        this.searchkey= event.target.value;
    }
    handlebutton(){
    getaccount({keyword : this.searchkey})
    .then(result=>{
        this.accounts= result;
    })
    .catch(error=>{
        this.accerror=error;
        console.log(error);
    });
}
}