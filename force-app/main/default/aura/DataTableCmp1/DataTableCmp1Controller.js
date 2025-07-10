({
	init : function(component, event, helper) {
         component.set('v.mycolumns', [
            { label: 'Contact Name', fieldName: 'Name', type: 'text'},
            { label: 'Phone', fieldName: 'Phone', type: 'phone'},
             { label: 'Email', fieldName: 'Email', type: 'email'},{label:'Account Name',fieldName:'AccountId',type:'text'}
        ]);
		helper.helperMethod(component, event);
    }
})