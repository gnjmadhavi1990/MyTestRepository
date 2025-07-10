({
	calculator : function(component, event, helper) {
        var fnum=component.get("v.fnumber");
        var snum= component.get("v.snumber");
        component.set("v.Result",fnum+snum);
		
	}
})