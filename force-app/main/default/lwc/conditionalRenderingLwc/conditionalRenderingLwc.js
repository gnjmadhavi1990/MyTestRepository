import { LightningElement } from 'lwc';

export default class ConditionalRenderingLwc extends LightningElement {
    showMe = false;
    handleEvent(event){
        this.showMe=event.target.checked;
    }
}