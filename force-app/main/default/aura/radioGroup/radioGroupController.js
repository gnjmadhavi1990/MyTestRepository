({
	handleClick  : function(component, event, helper) {
		var num1 =component.find("num1").get("v.value");
        var num2 =component.find("num2").get("v.value");
        var res;
        var radiogrp = component.find("radiogrp").get("v.value");
        num1 = Number(num1);
        num2 = Number(num2);
        if(radiogrp == "Option1"){
            res = num1 + num2;
        }else if(radiogrp =="Option2"){
                 res = num1 - num2;
                 }else if(radiogrp == "Option3"){
res = num1 *num2;
                 }else if(radiogrp == "Option4"){
                     res = num1/num2;
                 }
        res = Number(res);
        var ress =component.find("res");
        ress.set("v.value",res);
                
	}
})