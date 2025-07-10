({
	handleButton : function(component, event, helper) {
		var sum= parseInt(component.get("v.fnumber"))+ parseInt(component.get("v.snumber"));
        var AppEvn=$A.get("e.c:NewApplicationEvent");
        AppEvn.setParams({"sumresult":sum});
        AppEvn.fire();
	}
})