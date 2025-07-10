({
	doInit : function(component, event, helper) {
		var action =component.get("c.createContacts");
       var recId =component.get("v.recordId");
        action.setParams({"accountId":recId});
        action.setCallback(this,function(data){
            var state=data.getState();
            var record=component.getReturnValue();
            if(state === "success"){
                component.set("v.recordId",record);
                
            }
        });
        $A.enqueueAction(action);
	},
    handleButton: function(component, event, helper) {
    var action = component.get("c.contacts");
    var recId = component.get("v.conObj");
        action.setParams({"conOBJ":recId});
        action.setCallback(this,function(data){
            var state=data.getState();
            var record=component.getReturnValue();
            if(state === "sucess"){
                component.set("v.conObj",record);
            }
        });
        $A.enqueueAction(action);
    
    
}
})