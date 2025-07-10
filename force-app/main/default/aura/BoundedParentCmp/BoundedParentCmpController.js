({
   

	onClick : function(component, event, helper) {
		component.set("v.parentAttr", "Updated Parent Attribute");
	},
     handlerAction  : function(component, event, helper) {
		console.log("Parent Value has Changed");
        console.log("Old Values",+ event.getParam("oldValue"));
         console.log("New Values",+ event.getParam("Values"));
     }
})