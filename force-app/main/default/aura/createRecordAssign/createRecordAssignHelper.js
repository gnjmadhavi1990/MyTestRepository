({
	helperMethod : function(component, event) {
        var cObj =component.get("v.conobj")
         if($A.util.isEmpty(cObj.AccountId)||$A.util.isUndefined(cObj.AccountId)){
            alert("please enter AccounId");
            return;
        }
        if($A.util.isEmpty(cObj.FirstName)||$A.util.isUndefined(cObj.FirstName)){
          alert("please enter FirstName");
            return;
        }
        if($A.util.isEmpty(cObj.LastName)||$A.util.isUndefined(cObj.LastName)){
          alert("please enter LastName");
            return;
        }if($A.util.isEmpty(cObj.Phone)||$A.util.isUndefined(cObj.Phone)){
          alert("please enter Phone");
            return;
        }
		var action = component.get("c.createCon");
        action.setParams({con:cObj});
       
        action.setCallback(this,function(response){
        var state = response.getState();
        if(state == "SUCCESS"){
            var newcontact = {'sobjecttype':'Contact','AccountId':'','FirstName':'','LastName':'','Phone':''};
            component.set("v.conobj",newcontact);
            alert('record got created');
        }
        else if(state === "ERROR"){
            var errors =response.getError();
            if(errors){
                if(errors[0] && errors[0].message){
                    alert("ERRor message:" +errors[0].message);
                }
                }else {
                        console.log("Unknown Error");
            }
        }
    });
        $A.enqueueAction(action);
}
	})