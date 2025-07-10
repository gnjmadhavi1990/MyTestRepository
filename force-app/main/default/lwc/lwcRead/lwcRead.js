import { LightningElement } from 'lwc';

export default class LwcRead extends LightningElement {
    onchange(event){
        var value =event.target.value;
        alert('enter value is:'+value);
    }
}