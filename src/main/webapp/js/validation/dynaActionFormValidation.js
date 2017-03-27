$().ready(function() {
	$("#dynaActionFormForm").validate({
		rules: {
			fullName: {
				required: true
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
				required: true
			},
			country: {
				required: true
			},
			gender: {
				required: true
			},
			accept: {
				required: true
			}
		},
		messages: {
			fullName: {
				required: "Full name is required."
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
		errorClass: "error-required-fields"
	});
});