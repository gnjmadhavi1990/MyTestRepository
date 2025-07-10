({
	calculator : function(component, event, helper) {
        var fnumber= component.find("fnum").get("v.value");
        var snumber= component.find("snum").get("v.value");
        var Res= component.find("Result");
        Res.set("v.value" ,fnumber+snumber);
		
	}
})