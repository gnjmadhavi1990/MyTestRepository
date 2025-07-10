import { LightningElement } from 'lwc';

export default class ChildComponen1 extends LightningElement {
    Name='';
    handleChange(event)
    {
        this.Name=event.target.value;
    }
    handleClick(event){
        const searchEvent= new CustomEvent('getEvent', {detail:this.Name});
        this.dispatchEvent(searchEvent);
    }
}