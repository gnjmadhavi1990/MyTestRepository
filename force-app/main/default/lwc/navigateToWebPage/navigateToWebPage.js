import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';

export default class NavigateToWebPage extends NavigationMixin(LightningElement) {
    handleClick(){
        this[NavigationMixin.Navigate]({
           "type":"standard__webPage",
            "attributes":{
                "url": "https://salesforcelightningweb.netlify.app/",
            }
        })
    }
}