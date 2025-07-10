({
	onClick : function(component, event, helper) {
		var InputCmp= component.find("v.inputCmp");
        var value= component.get("v.value");
        if(value>=50){
            component.set("v.flag",true);
            component.set("v.headerFlag",true);
            
        }else{
            component.set("v.flag",false);
            component.set("v.headerFlag",true);
        }
	}
})