import { LightningElement ,api} from 'lwc';

export default class ApiPublicproperty extends LightningElement {
    message='Public Property';
    @api recordId;
}