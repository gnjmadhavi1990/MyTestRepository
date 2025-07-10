import { LightningElement ,api} from 'lwc';

export default class ChildOfChildToParentlwc extends LightningElement {
    @api value1 ="hello";
    @api value2; "world";
    handleclick(event){
        const eve = new CustomEvent('mycustevent',{detail:
            {
            value1 : this.value1,
        value2 :this.value2}
    });
        this.dispatchEvent(eve);
        
    }
}