$().ready(function() {
		// validate signup form on keyup and submit
		$("#lazyFormForm").validate({
			rules: {
				firstname: "required",
				lastname: "required",
				address: "required",
				city: "required", 
				state: "required", 
				zip: "required",
				phone: "required",
				email: {
					required: true,
					email: true
				}
			},
			messages: {
				firstname: "Please enter your first name",
				lastname: "Please enter your last name",
				address: "Please enter your address",
				city: "Please enter your city",
				state: "Please enter your state",
				zip: "Please enter your zip",
				phone: "Please enter your phone",
				email: "Please enter a valid email address"
			},
			errorClass: "error-required-fields"
		});
});