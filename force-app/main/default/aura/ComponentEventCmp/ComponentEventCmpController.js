({
	handleChange : function(component, event, helper) {
		var appEvn=component.getEvent("appEvent");
        appEvn.setParams({"selectedVal":component.get("v.selectedValues")});
        appEvn.fire();
	}
})