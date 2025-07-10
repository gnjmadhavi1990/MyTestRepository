import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';
export default class NavigateToLwcComponent extends NavigationMixin(LightningElement) {
    handleLwcToAura(){
        this[NavigationMixin.Navigate]({
            type:'standard__component',
            attributes:{
                componentName:'c__navigateToAura',

            },
            state:{
                c__recordId:'123456'
            }
        })
    }hadleClick(){
        var defination={
            componentDef:"c:navigateToLwcTarget",
            attributes:{
                recordId:'1351215'
            }
        }
        this[NavigationMixin.Navigate]({
            type:'standard__webPage',
            attributes:{
                url:'/one/one.app#'+btoa(JSON.stringify(defination))
            }
        })

    }
}