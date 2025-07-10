({
	handleEvent : function(component, event, helper) {
		var Message=event.getParam("message");
        var Label=event.getParam("label")
        component.set("v.messageFromNotifier",Message);
        component.set("v.label",Label);
        var count=parseInt(component.get("v.messageCount")+1);
        component.set("v.messageCount",count);
	}
})