import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
export default class ToastMessages extends LightningElement {

    handleSuccess(){
        const eve= new ShowToastEvent({
            title : 'success!',
            message : 'Toast Message Notification!',
            variant : 'success',
            mode :  'dismissable'
        });
        this.dispatchEvent(eve);
    }
    handleError(){
        const eve= new ShowToastEvent({
            title : 'error!',
            message : 'Toast Message Notification!',
            variant : 'error',
            mode :  'dismissable'
        });
        this.dispatchEvent(eve);
    }
    handleWarning(){
        const eve= new ShowToastEvent({
            title : 'warning!',
            message : 'Toast Message Notification!',
            variant : 'warning',
            mode :  'dismissable'
        });
        this.dispatchEvent(eve);
    }
    handleInfo(){
        const eve= new ShowToastEvent({
            _title : 'info!',
            message : 'Toast Message Notification!',
            variant : 'info',
            mode :  'dismissable'
        });
this.dispatchEvent(eve);
    
}}