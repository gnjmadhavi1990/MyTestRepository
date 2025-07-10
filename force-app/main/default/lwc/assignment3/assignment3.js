import { LightningElement } from 'lwc';

export default class Assignment3 extends LightningElement {
    firstName='';
    lastName='';
    handleChange(event){
        const field = event.target.name;
        if(field === 'FirstName'){
            this.firstName=event.target.value;
        }else if(field === 'LastName'){
         this.lastName =event.target.value;
        }

    }
    get uppercasedFullName(){
        return `${this.firstName} ${this.lastName}`.toString();
    }
}