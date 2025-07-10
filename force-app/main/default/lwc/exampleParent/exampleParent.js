import { LightningElement } from 'lwc';

export default class ExampleParent extends LightningElement {
    userDetails=[{

        Name:'Ganji Madhavi',
        Title:'Salesforce Developer',
        imageUrl:'https://www.w3schools.com/w3images/team2.jpg',
        Company: 'Accenture',
        buttonnext: 'Contact',
    },
{
    Name:'Sriramana',
    Title:'Business Analyst',
    imageUrl:'https://www.w3schools.com/w3images/team3.jpg',
    Company:'Tcs',
    buttonnext:'Contact',

},
{
    Name:'David Warner',
    Title: 'ceo',
    imageUrl:'https://www.w3schools.com/w3images/team4.jpg',
    Company:'IBM',
    buttonnext:'Contact',
},];

}