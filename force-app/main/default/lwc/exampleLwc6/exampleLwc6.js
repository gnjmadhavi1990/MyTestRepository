import { LightningElement,track } from 'lwc';

export default class ExampleLwc6 extends LightningElement {
    @track fullname="Madhavi Ganji";
    @track title="Salesforce Developer";
    onHandler(event){
        this[event.target.name]=event.target.value;

    }
}