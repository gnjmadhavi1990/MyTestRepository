import { LightningElement } from 'lwc';
import {NavigationMixin}  from'lightning/navigation'
export default class NavigateToVfpage extends NavigationMixin(LightningElement) {
    handleLwcToVfpage(){
        this[NavigationMixin.Navigate]({
            type:'standard__webPage',
            attributes:{
                url:"apex/naviagte_VfPage"
               }
        }).then(generateUrl=>{
            console.log(generateUrl)
            window.open(generateUrl);
        })
    
}
}