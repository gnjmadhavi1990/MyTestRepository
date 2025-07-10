import { LightningElement ,api} from 'lwc';

export default class ParentCmpOne extends LightningElement {
    @api msg;
    handleEvent(event){
        const textVal=event.detail;
        this.msg=textVal;

    }
}