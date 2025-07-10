import { LightningElement ,api} from 'lwc';

export default class ParentChildToParent extends LightningElement {
    handleevent(event){
        let value1 = event.detail.value1;
        let value2 = event.detail.value2;
        alert('the value of 1 is :' +value1);
        alert('the value of 2 is:' +value2);
    }
}