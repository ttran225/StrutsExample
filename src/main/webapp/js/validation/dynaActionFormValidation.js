$().ready(function() {
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