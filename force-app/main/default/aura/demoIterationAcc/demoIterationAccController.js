({
	doInit : function(component, event, helper) {
		var action = component.get("c.getAccountList");
        action.setCallback(this,function(response){
            component.set("v.accList",response.getReturnValue())
        });
        $A.enqueueAction(action);
	}
})