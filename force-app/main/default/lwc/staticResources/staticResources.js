import { LightningElement } from 'lwc';
import myResource from '@salesforce/resourceUrl/LwcResource';
export default class StaticResources extends LightningElement {
    logo = myResource;
}