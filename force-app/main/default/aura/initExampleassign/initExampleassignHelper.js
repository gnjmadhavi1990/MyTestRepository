({
	helperMethod : function(component, event) {
      var action =component.get("c.getCon");
        action.setParams({ParentId : component.get("v.ParentId")});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == "SUCCESS"){
                component.set("v.data",response.getReturnValue());
                             
            }
        });
        $A.enqueueAction(action);
                          
	}
})