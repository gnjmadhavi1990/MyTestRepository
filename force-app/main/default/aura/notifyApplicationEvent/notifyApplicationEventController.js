({
	notifyApplication : function(component, event, helper) {
		var appEvent= $A.get("e.c.myApplicationEvent");
        appEvent.setParams({ "message"  : "a Application event fired me"});
	
    appEvent.fire();
    
	}
})