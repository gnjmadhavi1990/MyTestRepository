({
	methodParent : function(component, event, helper) {
        var childCmp=component.find("v.msg");
		component.set("v.valueFromChild",childCmp.get("v.valueFromParent"));
	}
})