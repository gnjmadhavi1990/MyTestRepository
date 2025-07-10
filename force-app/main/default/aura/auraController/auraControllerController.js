({
	doInit : function(component, event, helper) {
        var action =component.get("c.getAccountList");
        action.setCallback(this,function(response){
        var state=response.getState();
        if(state ==="SuCCESS"){
            component.set("v.accList",response.getReturnValue());
        }
                           });
    $A.enqueueAction(action);
		
	}
})