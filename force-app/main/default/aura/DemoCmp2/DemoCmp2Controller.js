({
	doInit : function(component, event, helper) {
       // component.set("v.message","button 1 initialized");
	//	component.set("v.message1","button 2 initialized");
	},
    handlerClick : function(component, event, helper) {
       // component.set("v.message","button clicked");
       var btn =event.getSource();
        var msg =btn.get("v.label");
        if(msg == "click me"){
            component.set("v.message","button clicked");
            
        }else{
            component.set("v.message1",msg);
        }
		
	},
    anotherHandlerClick : function(component, event, helper) {
        //component.set("v.message1","another button clicked");
		//var btn =event.getSource();
       // var msg =btn.get("v.label");
        component.set("v.message1",event.getSource().get("v.label"));
	}
})