({
	Action : function(component, event, helper) {
		var messages=event.getParam("agruments");
        var displeMsg='';
        if(messages){
            displeMsg=messages.message;
        }
        var msgPanel=component.find("messages");
        $A.createComponents([["ui:message",{"title":severity.toUpperCase(),"severity":"Error"}],["ui:outputText",{"value":displeMsg}]
                            ],
                            function(Components,status,errorMessage){
                                if(status ==="SUCCESS"){
                                    var message = Components[0];
                                var outputText  = Components[1];
                                message.set("v.body",outputText);
                                msgPanel.set("v.body",message);
                                }
                                
                            }
                           
                           );
	}
})