import { LightningElement } from 'lwc';

export default class GetterLwc extends LightningElement {

    employee={

        Name:'Madhavi',
        Surname:'Ganji',
        Age:52

    }
    get getRank(){
        const Rank=this.employee.Age>50?'one':this.employee.Age>30?'two':'three';
        return Rank;
    }
}