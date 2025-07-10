({
	handleButton : function(component, event, helper) {
		var cmpEvent= component.getEvent("cmpEvent");
        var  msg =component.get("v.messageString");
        msg = $A.util.isEmpty(msg)? "no Message Passed":msg;
        
        cmpEvent.setParams({
            "message":msg,
            "label":"Custom label"
        });
        cmpEvent.fire();
	}
})