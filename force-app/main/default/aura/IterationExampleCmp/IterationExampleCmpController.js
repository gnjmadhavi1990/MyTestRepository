({
	doInit : function(component, event, helper) {
		var action=component.get("c.GetContacts");
       
        action.setCallback(this,function(data){
            var state=data.getState();
            component.set("v.conList",data.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})