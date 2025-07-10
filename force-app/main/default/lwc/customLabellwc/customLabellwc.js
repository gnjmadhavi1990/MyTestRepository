import { LightningElement } from 'lwc';
import greetings from '@salesforce/label/c.SampleCL';
export default class CustomLabellwc extends LightningElement {
    ctext = greetings;
}