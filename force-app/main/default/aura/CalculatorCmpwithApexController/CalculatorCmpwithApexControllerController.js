({
	calculator : function(component, event, helper) {
		var fnumber= component.get("v.fnumber");
        var snumber=component.get("v.snumber");
        var action= component.get("c.calculatorValues");
        action.setParams({"firstnumber":fnumber,"secondnumber":snumber});
        action.setCallback(this,function(response)
                           {
            var state=response.getState();
                               if(state ==="SUCESS"){
                                   component.set("v.sum",response.getReturnValue());
                               }
        });
        $A.enqueueAction(action);
	}
})