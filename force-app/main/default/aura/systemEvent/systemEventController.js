({
	doInit : function(component, event, helper) {
		var action =component.get("c.getAccounts");
        action.setCallback(this,function(response){
            var state =resonse.getState();
            if(state === "SUCCESS"){
                component.set("v.accList",response.getReturnValue());
            }
        
        });
        $a.enqueueAction(action);
	},
    onhandleChange: function(component, event, helper) {
        component.set("v.recordId",component.find("Select").get("v.value"));
    }
})