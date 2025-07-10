({
	handlChange : function(component, event, helper) {
		var action= component.get("c.picklistValueInfo");
        action.setCallback(this,function(data){
            var values=[];
            var result=data.getReturnValue();
            for(var key in result){
                values.push({
                    label:result[key],
                    value:key
                });
            }
            component.set("v.Options",values);
        });
        $A.enqueueAction(action);
	}
})