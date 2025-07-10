import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';
import {encodedefaultFieldValues} from 'lightning/pageReferenceUtils';
export default class NavigationNamedPages extends NavigationMixin(LightningElement) {
    handleClick(){
        this[NavigationMixin.Navigate]({
            type:'standard__namedPage',
            attributes:{
                pageName:'chatter'
            }
        })
    }
    handleHome(){
        this[NavigationMixin.Navigate]({
            type:'standard__namedPage',
            attributes:{
                pageName:'home'
            }
        })
    }
    handleFiles(){
        this[NavigationMixin.Navigate]({
        type:'standard__objectPage',
        attributes:{
            objectApiName:'ContentDocument',
            actionName:'Home',
        }
    })
    }
    handleContact(){
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'Contact',
                actionName:'new',
            }
        })
    }
    handleDefaultContact(){
        const defaultValues= encodedefaultFieldValues({
            FirstName: 'Salesforce',
            LastName:'Developer',
            LeadSource:'Others',
        })
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'Contact',
                actionName:'new',
            },
            state:{
                defaultFieldValues:defaultValues

            }
        })
    }
    handleContactList(){
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'Contact',
                actionName:'list'
            },
        state:{
            filterName:'Recent'
        }
        })
    }
}