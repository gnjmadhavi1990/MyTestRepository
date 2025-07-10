import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';
export default class NavigationToItemPage extends NavigationMixin(LightningElement) {
    handleTab(){
        this[NavigationMixin.Navigate]({
            type:'standard__navItemPage',
            attributes:{
                apiName:'Reports',

            },
            state:{
                filterName:'Created By me',
            }
        });

    }
}