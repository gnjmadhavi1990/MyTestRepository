import { LightningElement } from 'lwc';

export default class DataBindingLwc extends LightningElement {
    myValue="SalesForce Developer";
    handleEvent(event){
        this.myValue=event.target.value;

    }
}