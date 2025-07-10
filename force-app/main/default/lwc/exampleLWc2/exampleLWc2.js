import Title from '@salesforce/schema/Contact.Title';
import { LightningElement ,track} from 'lwc';

export default class ExampleLWc2 extends LightningElement {
    @track
    contacts=[
        {
            Id : 1,
            Name :'Madhavi',
            Title :'Developer',
        },
        {Id:2,
            Name:'Sriramana',
            Title:'Business Analyst',
        },
    ]
}