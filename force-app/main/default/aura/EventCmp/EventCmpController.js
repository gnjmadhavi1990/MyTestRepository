({
	doInit : function(component, event, helper) {
		var action=component.get("c.GetContacts");
        action.setCallback(this,function(data){
            var state= data.getState();
            if(state ==="SUCCESS"){
                component.set("v.ConList",data.getReturnValue());
            
            }
            
        });
        $A.enqueueAction(action);
	},
    handlChange: function(component,event,helper){
        component.set("v.recordId",component.find("select1").get("v.value"));
    }
})