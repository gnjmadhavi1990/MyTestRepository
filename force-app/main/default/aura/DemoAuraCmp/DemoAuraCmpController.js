({
	doInit : function(component, event, helper) {
		//component.set("v.var",'Demo Component Value Test');
		component.set("v.Message",'Button one is Initialized');
        component.set("v.Message2",'Button two is Initialized');
        var data={'Name':'Aura Account',
                  'Email':'aura@aura.com'};
        component.set("v.jsObject",data);
        var data1={'myString': 'Welcome',
                   'myInteger': 2025};
        component.set("v.wrapperDemo",data1);
    },
        handleClick : function(component, event, helper) {
           //component.set("v.Message",'Button Clicked');
           var button=event.getSource();
            var message=button.get("v.label");
            if(message =="ClickMe"){
          component.set("v.Message",'Button1 Clicked');

            }else{
                component.set("v.Message",'Button 2Clicked');
            }
        
	// },
   // anotherhandleClick : function(component, event, helper) {
       // component.set("v.Message2",'Another Button Clicked');
      //  var button =event.getSource();
       // var message=button.get("v.label");
       // component.set("v.Message2",message);
    }
})