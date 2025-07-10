import { LightningElement ,wire} from 'lwc';
import getaccounts from '@salesforce/apex/GetaccountLwcAssign.getaccounts';
const columns = [{label:'Name',fieldName:'Name'},{label:'Rating',fieldName:'Rating'},{label:'Phone',fieldName:'Phone'}];
export default class Assignment2 extends LightningElement {
    @wire(getaccounts) accounts;
    columns = columns;
}