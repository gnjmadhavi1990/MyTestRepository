({
	handleInit : function(component, event, helper) {
		var action=component.get("c.getAccounts");
        action.setCallback(this,function(data){
            var state=data.getState();
            var getValues=data.getReturnValue();
            component.set("v.acclist",data.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})