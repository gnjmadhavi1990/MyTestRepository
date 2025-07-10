({
	doSave : function(component, event, helper) {
		var action =component.get("c.createContactRecord");
        var conList=component.get("c.conList");
        action.setParams({'conObj' :component.get("v.ContactObj")});
        action.setCallback(this,function(data){
            component.set("v.contactId",data.getReturnValue());
            conList.splice(0,0,component.get("v.ContactObj"));
            component.set("v.conList",conList);
        });
        $A.enqueueAction(action);
	},
    doInit : function(component, event, helper) {
        var action =component.get("c.retriveContact");
        action.setCallback(this,function(data){
            component.set('v.conList',data.getReturnValue());
        });
        $A.enqueueAction(action);
    },
        
})