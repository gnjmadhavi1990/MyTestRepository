import { LightningElement,api } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class FileUpload extends LightningElement {
    @api recordId;
    get acceptedFormats(){
    
     return ['.pdf','.png'];
}
handleuploadfinished(event){
    const uploadedFiles = event.detail.files;
    const eve =new ShowToastEvent({
        title : 'Toast Message',
        message: uploadedFiles.length +'files Uploaded.',
        variant : 'success',
        mode :'dismissable'
    });
    this.dispatchEvent(eve);
}}