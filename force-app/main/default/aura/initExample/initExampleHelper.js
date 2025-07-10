({
	helperMethod : function(component,event) {
        var action = component.get("c.getACC");
        action.setParams({"limits":component.get("v.limit")});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                component.set("v.data",response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	}
})