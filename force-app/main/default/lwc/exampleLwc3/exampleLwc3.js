import { LightningElement } from 'lwc';

export default class ExampleLwc3 extends LightningElement {
    greetings="Lwc components";
    onhandleEvent(event){
        this.greetings = event.target.value;
    }
}