import { LightningElement } from 'lwc';

export default class ChildCmpOne extends LightningElement {
    changeHandler(event){
        event.preventDefault();
        const name=event.target.value;
        const selectEvent=new CustomEvent('mycustomevent',{detail:name});
        this.dispatchEvent(selectEvent);

    }
}