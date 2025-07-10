import { LightningElement ,api} from 'lwc';

export default class ChildComponent extends LightningElement {
    @api navList;
    handleNavSelection(event){
event.preventDefault();
const selectEvent=new CustomEvent('Selection',{detail:event.target.name});
this.dispatchEvent(selectEvent);
    }

}