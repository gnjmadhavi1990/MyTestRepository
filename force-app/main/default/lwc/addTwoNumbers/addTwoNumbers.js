import { api, LightningElement } from 'lwc';

export default class AddTwoNumbers extends LightningElement {
    @api number1;
   @api number2;
   @api result;
    handleNumber1(event){
        this.number1= this.template.querySelector(".no1").value;
    }
    handleNumber2(){
    this.number2= this.template.querySelector(".no2").value;

    }

addTwoNumbers(event){
        this.result = parseInt(this.number1) + parseInt(this.number2) ;
    }
}