({
	handleChange : function(component, event, helper) {
		var action=component.get("c.getDetails");
        action.setCallback(this,function(data){
            var result=data.getReturnValue();
            component.set("v.wrapRecord",result);
        });
        $A.enqueueAction(action);
	}
})