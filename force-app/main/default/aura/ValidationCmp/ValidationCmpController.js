({
	doAction : function(component, event, helper) {
		var inputCmp = component.find("inputCmp");
        var value =inputCmp.get("v.value");
        //number is numeric?
        if(isNaN(value)){
            inputCmp.set("v.errors",[{message:"number is not numeric:"+ value}]);
        }else{
            inputCmp.set("v.errors", null);
        }
	}
})