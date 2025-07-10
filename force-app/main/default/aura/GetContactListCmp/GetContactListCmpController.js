({
	handleInit : function(component, event, helper) {
        component.set("v.Columns",[{label:"First Name",fieldName:"firstName",type:"Text"},
                                   {label:"Last Name",fieldName:"lastName",type:"Text"},
                                   {label: "Phone",fieldName:"Phone",type:"Phone"},
                                  {label:"Email",fieldName:"Email",type:"Email"}]);
                                   
         var action=component.get("c.getContacts");
        action.setParams({recordid:component.get("v.recordId")}) ;
        action.setCallback(this,function(data){
            var state=data.getState();
            if(state ==="SUCCESS"){
                component.set("v.con",data.getReturnValue());
                
            }
        });
        $A.enqueueAction(action);
        
                                   
	}
})