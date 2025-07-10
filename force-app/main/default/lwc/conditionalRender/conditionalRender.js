import { LightningElement } from 'lwc';

export default class ConditionalRender extends LightningElement {
    areDetailsVisible = false
    clickHandle(event){
        this.areDetailsVisible = event.target.checked;
    }
}