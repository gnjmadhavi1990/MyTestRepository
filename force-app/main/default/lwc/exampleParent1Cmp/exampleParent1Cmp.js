import { LightningElement } from 'lwc';

export default class ExampleParent1 extends LightningElement {
    showModal= false
    showHandler(event){
        this.showModal= true;

    }
    modalCloseHandler(){
        thiss.showModal= false;
    }
}