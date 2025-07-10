({
	helperAdditionMethod : function(component, event,helper) {
        var fNumber=parseInt(component.get("v.FirstNumber"));
        var sNumber=parseInt(component.get("v.SecondNumber"));
        var addition=component.get("c.calculatorValues");
        addition.setParams({"firstnumber":fNumber,"secondnumber":sNumber});
        addition.setCallback(this,function(data){
            var addResult=data.getReturnValue();
            alert(addResult);
            component.set("v.Result",addResult);
            
        });
        $A.enqueueAction(addition);
		
	
		
	}
})