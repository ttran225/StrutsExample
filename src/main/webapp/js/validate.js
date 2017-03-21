$().ready(function() {
	// validate validatorform
	$("#login-form").validate({
		rules: {
			username: {
				required: true,
				minlength: 3,
				maxlength: 15
			},
			password: {
				required: true,
				minlength: 3,
				maxlength: 15
			}
		},
		messages: {
			username: {
				required: "Username is required.",
				minlength: "Username must be at least {0} characters in length.",
				maxlength: "Username must be at most {0} characters in length."
			},
			password: {
				required: "Password is required.",
				minlength: "Password must be at least {0} characters in length.",
				maxlength: "Password must be at most {0} characters in length."
			}
		},
		errorClass: "error-required-fields"
	});
	
	// validate lazyform
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