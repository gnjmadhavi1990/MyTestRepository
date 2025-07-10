import { LightningElement } from 'lwc';

export default class ParentOfChildToParentlwc extends LightningElement {

    handleevent(event){
        debugger;
        let value1 = event.detail.value1;
        let value2 = event.detail.value2;
        alert(+value1);
        alert(+value2);

    }
}