({
	handleClick  : function(component, event, helper) {
		var flag = true;
       component.set("v.flag",flag);
        var firstname = component.find("First Name").get("v.value");
       var lastname = component.find("Last Name").get("v.value");
     var fullname = firstname + lastname;
      var res = component.find("Full Name");
      res.set("v.value",fullname);        
	}
    
})