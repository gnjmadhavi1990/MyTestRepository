({
	fireComponentEvent : function(component, event) {
		var cmpEvent= component.getEvent("cmpEvent");
        cmpEvent.setParams({ "message"  : "a Component event fired me"});
	
    cmpEvent.fire();
    }
})