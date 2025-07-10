({
	handlerApplication : function(component, event, helper) {
        var message = event.getParam("v.message");
        component.set("v.messageFromEvent",message);
      
	}
})