import { LightningElement,wire } from 'lwc';
import getContactList from '@salesforce/apex/refreshApex.getContactList'
const columns =[
    {label:'First Name' ,fieldName:'FirstName' },
    {label:'Last Name', fieldName:'LastName'},
    {label:'Email', fieldName:'Email',type:'email'},
    {label:'Account Name',fieldName:'AccountName'}
   
]
export default class RefreshApexLwca extends LightningElement {
    columns=columns
    draftValues=[]

    
@wire(getContactList)
contacts;

handleSave(event){
console.log(event.detail.draftValues);
}
}