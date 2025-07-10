({
	updateChildvar : function(component, event, helper) {
		component.set("v.childVar","updated child attribute");
	},
    
    onUpdateChildvar : function(component, event, helper) {
		console.log("Child var changed");
        console.log("old value:"+event.getParam("old value"));
        console.log("new value:"+event.getParam("value"));
	}
})