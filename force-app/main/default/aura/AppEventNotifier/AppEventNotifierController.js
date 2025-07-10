({
	handlePress : function(component, event, helper) {
        var appEvent=$A.get("e.c:AppEvent");
        appEvent.setParams({
            "message":'I am value from AppEvent Notifier'
        });
        appEvent.fire();
	}
})