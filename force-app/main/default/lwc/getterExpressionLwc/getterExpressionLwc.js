import { LightningElement } from 'lwc';

export default class GetterExpressionLwc extends LightningElement {
    firstName="";
    lastName="";
    
    handleEvent(event){
        const field=event.target.name;
        if(field ==='firstName'){
            this.firstName=event.target.value;

        }else if(field ==='lastName'){
            this.lastName=event.target.value;

        }


    }get uppercaseName(){
        return `${this.firstName} ${this.lastName}`.toUpperCase();
    }

}