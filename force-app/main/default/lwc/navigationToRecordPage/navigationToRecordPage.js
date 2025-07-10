import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';

export default class NavigationToRecordPage extends NavigationMixin(LightningElement) {
    handleRecordPage(){
        this[NavigationMixin.Navigate]({
            type:'standard__recordPage',
            attributes:{
                recordId:'003J200000817qCIAQ',
                apiName:'Contact',
                actionName:'view',
            }
        })
    }
    handleCustomRecordPage(){
        this[NavigationMixin.Navigate]({
            type:'standard__recordPage',
            attributes:{
                recordId:'a005h00000jbCKZAA2',
                apiName:'company__c',
                actionName:'view',
    }
})
}
handleRecordRelationshipPage(){
    this[NavigationMixin.Navigate]({
        type:'standard__recordRelationshipPage',
        attributes:{
            recordId:'0015h00001AFeA7AAL',
            objectApiName:'Account',
            relationshipApiName:'Contacts',
            actionName:'view',
        }
    })
}
}