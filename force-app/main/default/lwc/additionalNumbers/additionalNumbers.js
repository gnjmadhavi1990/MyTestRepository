import { LightningElement ,track} from 'lwc';

export default class AdditionalNumbers extends LightningElement {
    @track num1;
    @track num2;
    @track result;
  
    calcExpr() {
      this.result = Number(this.num1) + Number(this.num2);
    }
  
    handleChangeNum1(evt) {
      this.num1 = evt.target.value;
    }
    handleChangeNum2(evt) {
      this.num2 = evt.target.value;
    }
  }