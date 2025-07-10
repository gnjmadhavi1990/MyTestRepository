({
	init : function(component, event, helper) {
        component.set('v.mycolumns', [
            { label: 'Account Name', fieldName: 'Name', type: 'text'},
            { label: 'Phone', fieldName: 'Phone', type: 'phone'},
            
        ]);
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