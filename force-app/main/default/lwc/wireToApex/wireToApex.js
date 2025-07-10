import { LightningElement,api,wire } from 'lwc';
import getACC from '@salesforce/apex/getRecords.getACC';
export default class WireToApex extends LightningElement {
    @api recordId;
    @wire(getACC,{accId:'$recordId'}) accounts;

}