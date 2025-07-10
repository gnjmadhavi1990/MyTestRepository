({
	helperMethod : function(component, event,helper) {
		var action=component.get('c.getAccounts');
        action.setCallback(this, $A.getCallback(function(data){
            var state=data.getState();
            if(state ==="Sucess"){
                component.set('v.mydata',data.getReturnValue());
            
            } else if (state === "ERROR") {
                var errors = response.getError();
                console.error(errors);
            }
        }));
        $A.enqueueAction(action);
	}
	
})