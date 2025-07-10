({
    onInit : function(component, event, helper) {
        $A.createComponent("lightning:button",{
            "aura:id":"findAuraId",
            "label":"ClickMe",
            "onclick":component.getReference("c.onClick")
        },
                           function(newButton,status,errorMessage){
                               if(status ==="SUCCESS"){
                                   var body=component.get("v.body");
                                   body.push(newButton);
                                   component.set("v.body",body);
                                   
                               }else if(status ==="INCOMPLETE"){
                                   console.log("no response from server or client is offline");
                               }else if(status ==="ERROR"){
                                   console.log("error:"+errorMessage);
                               }
                           }
                          
                          
                          );
    },
    onClick:function(component,event,helper){
        component.set("v.message","button created");
    }
})