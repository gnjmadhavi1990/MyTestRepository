({
	updateParentVar : function(component, event, helper) {
		component.set("v.parentVar","updated Parent attribute");
        
	},
    onUpdateparentVar : function(component, event, helper) {
        console.log("parent var changed");
        console.log("old value:"+event.getParam("old value"));
        console.log("new value:"+event.getParam("value"));
    }
})