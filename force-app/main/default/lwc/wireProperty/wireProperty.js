import { LightningElement, wire } from 'lwc';
import getaccount from '@salesforce/apex/getAccountsLwc.getaccounts';
const columns = [{ label:'Name', fieldName: 'Name' }, { label:'Rating', fieldName: 'Rating' },];
export default class WireProperty extends LightningElement {
    @wire(getaccount) accounts;
    columns = columns;

}