({
	throwError : function(component, event, helper) {
        var hasPerm = false;
        try{
            if(!hasPerm){
                throw new Error("You don't have the permissions to edit");
            }
        }
        catch(e){
            $A.createComponents([["ui:message",{"title":"sample Error",
                                                "severity":"error"}],["ui:outputText",{"value":e.message}]
                                ],
                                function(components,status,errorMessage){
                                    if(status ==="SUCCESS"){
                                        var message=components[0];
                                        var outputText=components[1];
                                        message.set("v.body",outputText);
                                        var div=component.find("div1");
                                        div.set("v.body",message);
                                    }else if(status ==="INCOMPLETE"){
                                        console.log("no response from server or clien is offline");
                                    }else if(status ==="ERROR"){
                                        console.log("error"+errorMessage);
                                    }
                                }
                               );
        }
        
	}
})