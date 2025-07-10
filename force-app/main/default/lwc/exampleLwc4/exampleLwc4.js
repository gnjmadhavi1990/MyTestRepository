import { LightningElement } from 'lwc';

export default class ExampleLwc4 extends LightningElement {
    areDetails="false";
    handleChange(event){
        this.areDetails=event.target.checked;
    }
}