({
	Addition : function(component, event, helper) {
		var fnumber = component.get("v.firstnumber");
        var snumber = component.get("v.secondnumber");
        var action =component.get("c.addTwoNumer");
        action.setParams({"fn":fnumber,"sn":snumber});
        action.setCallback(this,function(response){
            var state=response.getState();
            var valueofResponse =response.getReturnValue();
            if(state ==="SUCCESS"){
                component.set("v.res",response.getReturnValue());
            }
                           
                           });
        $A.enqueueAction(action);
	}
})