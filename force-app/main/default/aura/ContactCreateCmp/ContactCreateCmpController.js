({
	doSave : function(component, event, helper) {
		var action =component.get("c.createContact");
        var ConList=component.get("v.contactList")
        action.setParams({'conObj':component.get('v.con')});
        action.setCallback(this,function(data){
            component.set('v.ContactId',data.getReturnValue())
            ConList.splice(0,0,component.get('v.con'));
            component.set("v.contactList",ConList);
            
        });
        $A.enqueueAction(action);
	},
    doAction : function(component, event, helper) {
    var action = component.get("c.retriveContact");
    action.setCallback(this,function(data){
    component.set("v.contactList",data.getReturnValue())
});
$A.enqueueAction(action);
}
})