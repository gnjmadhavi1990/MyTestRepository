({
	handlerComponent : function(component, event, helper) {
        var message =event.getParams("message");
        component.set("v.messageFromEvent", message);
        
    
	}
})