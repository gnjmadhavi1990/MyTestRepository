import { LightningElement, api} from 'lwc';

export default class ChildChildToParent extends LightningElement {
    @api value1= "Hello";
    @api value2= "MadhaviGanji";
    handlebutton(event){
        const eve = new CustomEvent('mycustevent',{
            detail:
            {
                value1 : this.value1,
                value2 : this.value2 
            
        }
    });
    this.dispatchEvent(eve);
}
}