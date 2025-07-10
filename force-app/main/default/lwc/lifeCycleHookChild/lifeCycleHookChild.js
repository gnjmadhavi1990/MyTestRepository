import { LightningElement } from 'lwc';

export default class LifeCycleHookChild extends LightningElement {
    constructor(){
       super();
        console.log('call from Child constructor');
    }connectedCallBack(){
        console.log('call from child connectedcall back');
    }
    renderedCallBack(){
        console.log('call from child Rendered call back');
    }
    disconnectedCallBack(){
        console.log('call from child disconnected call back');
    }
    
    
}