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
	$("#register-form").validate({
		rules: {
			username: {
				required: true,
				minlength: 3,
				maxlength: 15
			},
			email: {
				required: true,
				email: true,
			},
			password: {
				required: true,
				minlength: 3,
				maxlength: 15
			},
			password2: {
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
			email: {
				required: "Email address is required.",
				email: "Email address is invalid."
			},
			password: {
				required: "Password is required.",
				minlength: "Password must be at least {0} characters in length.",
				maxlength: "Password must be at most {0} characters in length."
			},
			password2: {
				required: "Confirm password is required.",
				minlength: "Confirm password must be at least {0} characters in length.",
				maxlength: "Confirm password must be at most {0} characters in length."
			}
		},
		errorClass: "error-required-fields"
	});
	
	// validate dynaactionform
	$("#dynaActionFormForm").validate({
		rules: {
			fullName: {
				required: "Full name is required."
			},
			email: {
				required: true,
				email: true,
			},
			password: {
				required: true,
				minlength: 3,
				maxlength: 15
			},
			birthDate: {
				required: "Date of Birth is required."
			},
			country: {
				required: "Country is required."
			},
			gender: {
				required: "Gender is required."
			},
			accept: {
				required: "Accept is required."
			}
		},
		messages: {
			email: {
				required: "Email address is required.",
				email: "Email address is invalid."
			},
			password: {
				required: "Password is required.",
				minlength: "Password must be at least {0} characters in length.",
				maxlength: "Password must be at most {0} characters in length."
			}
		},
		errorClass: "error-required-fields"
	});
});