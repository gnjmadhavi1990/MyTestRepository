import { LightningElement } from 'lwc';
import greetings from '@salesforce/label/c.SampleCL';
export default class CustomLabel extends LightningElement {
    ctext = greetings;
}