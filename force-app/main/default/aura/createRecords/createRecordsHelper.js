({
    helperMethod : function(component, event) {
        var aobj = component.get("v.accobj");
        if($A.util.isEmpty(aobj.Name)||$A.util.isUndefined(aobj.Name)){
            alert("please enter Name");
            return;
        }
        if($A.util.isEmpty(aobj.Rating)||$A.util.isUndefined(aobj.Rating)){
          alert("please enter Rating");
            return;
        }
            if($A.util.isEmpty(aobj.Phone)||$A.util.isUndefined(aobj.Phone)){
            alert("please enter Phone");
            return;
        
        }
        //call apex
        var action =component.get("c.insertAcc");
        // set parameters
        action.setParams({acc: aobj});
        //setcallback
        action.setCallback(this,function(response){
        var state = response.getState();
        if(state == "SUCCESS"){
            var newaccount = {'sobjecttype':'Account','Name':'','Rating':'','Phone':''};
            component.set("v.accobj",newaccount);
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