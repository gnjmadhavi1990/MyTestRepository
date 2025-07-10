import { LightningElement } from 'lwc';

export default class LifeCycleHooks extends LightningElement {
isVisible=true;
    constructor(){
        super();
        console.log('call from constructor');
    }
    connectedCallback(){
        console.log('call from connected call back');
    }
    renderedCallback(){
        console.log('call from Rendered call back');
    }errorCallback(){
        console.log('call from error call back');
    }
    handleEvent(){
        if(this.isVisible == true){
            this.isVisible=false;
        }else{
            this.isVisible=true;
        }
    }
}