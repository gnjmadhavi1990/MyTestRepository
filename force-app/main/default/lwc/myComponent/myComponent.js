import { LightningElement } from 'lwc';
import SignInTemplate from './myComponentTemplate1.html'
import SignUpTemplate from './myComponentTemplate2.html'
import defaultTemplate from './myComponent.html'

export default class MyComponent extends LightningElement {

    selected =null;
    render(){
        return this.selected === 'Sign In'? SignInTemplate:
        this.selected === 'Sign Up'? SignUpTemplate:
        defaultTemplate

    }
    handleButton(event){
    this.selected = event.target.label

}
submitHandler(event){
    if(event.target.label ==='Sign Up'){
        console.log('SignUp Sucessfully');

    }
    else if(event.target.label ==='Sign In'){
        console.log('SignIn Sucessfully');
    }else{

    }
}
}