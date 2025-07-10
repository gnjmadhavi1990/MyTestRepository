import { LightningElement ,api} from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class AssignmentFileUpload extends LightningElement {
    @api myRecordId = "0015h000016NftiAAC";
    get accepetedFormats(){
        return['.pdf','.png'];
    }
    handleUploadFinished(event){
        const uploadFiles =event.detail.files;
         const eve = new ShowToastEvent({
            title : 'Toast Message',
            message : uploadFiles.length +'files Uploaded',
               variant : 'success',
               mode : 'dismissable'
         });
         this.dispatchEvent(eve);
}
    }