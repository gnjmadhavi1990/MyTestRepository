({
	init : function(component, event, helper) {
        component.set("v.Columns",[
            {label:'First Name',fieldName:'FirstName',type:'text'},
             {label:'Last Name',fieldName:'LastName',type:'text'},
            {label:'Account Name',fieldName:'AccountId',type:'text'},
            {label:'Phone',fieldName:'Phone',type:'Phone'}            
            
            ]);
        helper.helperMethod(component, event);
	}
})