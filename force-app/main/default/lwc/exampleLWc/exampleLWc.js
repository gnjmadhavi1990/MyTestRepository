import { LightningElement } from 'lwc';

export default class ExampleLWc extends LightningElement {
    firstName = 'Lightning Web';
    lastName = 'Component';

    get uppercasedFullName() {
        const fullName = `${this.firstName} ${this.lastName}`;
        return fullName.trim().toUpperCase();
    }
}