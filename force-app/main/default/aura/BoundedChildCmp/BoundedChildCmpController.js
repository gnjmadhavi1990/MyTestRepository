({
	onClick : function(component, event, helper) {
		component.set("v.childAttr","Updated Child Attribute");
	},
    
    onHandler : function(component,event,helper){
        console.log("Child Value has Changed");
        console.log("Old values",+ event.getParam("oldvalues"));
        console.log("new values",+ event.getParam("new Values"));
    }
})