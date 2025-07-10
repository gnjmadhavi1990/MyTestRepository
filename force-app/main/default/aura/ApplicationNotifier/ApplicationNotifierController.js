({
	applicationEventFire : function(component, event, helper) {
        var appEvent = $A.get("e.c:ApplicationEvent");
        appEvent.setParams({
            "message":"values from Application Event Notifier"
        });
        appEvent.fire();
		
	}
})