import { LightningElement,api } from 'lwc';

export default class Assignment1 extends LightningElement {
    @api firstname;
    @api lastname;
    @api fullname;
    handlefirstname(event){
    this.firstname = this.template.querySelector(".fname").value;
    }
    handlelastname(event){
    this.lastname = this.template.querySelector(".lname").value;
    }
    displayFullname(event){
      this.fullname =  parseFloat(this.firstname) + parseFloat(this.lastname);
      }
    }