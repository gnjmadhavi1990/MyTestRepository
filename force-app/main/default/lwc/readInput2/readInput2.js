import { LightningElement } from 'lwc';

export default class ReadInput2 extends LightningElement {
    clickMe(event){
        var inputCMP = this.template.querySelector(".inputCmp");
        var value = inputCMP.value;
        alert('value is:'+value);
        if(value ==="Madhavi Ganji"){
            inputCMP.setCustomValidity('Madhavi Ganji is already exited');
                   }else{ inputCMP.setCustomValidity('');
                }
                inputCMP.reportValidity();
            }
        }