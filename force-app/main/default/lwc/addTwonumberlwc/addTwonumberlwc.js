import { LightningElement } from 'lwc';

export default class AddTwonumberlwc extends LightningElement {
    number1;
    number2;
    result;
getnum(event){
if(event.target.name == 'number1'){
    this.number1 = parseInt(event.target.value);
}else if(event.target.name == 'number2'){
    this.number2 = parseInt(event.target.value);

}

};
addtwonumbers(event){
    debugger;
    this.result = this.number1 +this.number2;

}
}