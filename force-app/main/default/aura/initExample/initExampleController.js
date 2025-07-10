({
	init : function(component, event, helper) {
		component.set('v.columns',[
            {label:'Account Name', fieldName:'Name', type:'Text'},
            {label:'Rating',fieldName:'Rating',type:'text'},
            {label:'Industry',fieldName:'Industry',type:'text'},
            {label:'Annual Revenue',fieldName:'AnnualRevenue',type:'text'}             
]);
        helper.helperMethod(component,event);
	}
})