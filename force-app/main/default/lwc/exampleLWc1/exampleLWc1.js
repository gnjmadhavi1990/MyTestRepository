import { LightningElement } from 'lwc';

export default class ExampleLWc1 extends LightningElement {
    name ="This is lightning web component";
    handleInput(event){
        this.name=this.event.value;
    }
}