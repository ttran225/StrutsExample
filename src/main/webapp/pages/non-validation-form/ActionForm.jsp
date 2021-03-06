<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="robots" content="noindex">

<title>Amazon.com Inspired Registration Form - Bootsnipp.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<style type="text/css">
form {
	margin: 0px 10px;
}

h2 {
	margin-top: 2px;
	margin-bottom: 2px;
}

.container {
	max-width: 360px;
}

.divider {
	text-align: center;
	margin-top: 20px;
	margin-bottom: 5px;
}

.divider hr {
	margin: 7px 0px;
	width: 35%;
}

.left {
	float: left;
}

.right {
	float: right;
}
</style>
<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	window.alert = function() {
	};
	var defaultCSS = document.getElementById('bootstrap-css');
	function changeCSS(css) {
		if (css)
			$('head > link')
					.filter(':first')
					.replaceWith(
							'<link rel="stylesheet" href="'+ css +'" type="text/css" />');
		else
			$('head > link').filter(':first').replaceWith(defaultCSS);
	}
	$(document).ready(function() {
		var iframe_height = parseInt($('html').height());
		window.parent.postMessage(iframe_height, 'http://bootsnipp.com');
	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="panel panel-primary">
				<div class="panel-body">
					<form method="POST" action="/StrutsExample/nonvalidationform/SubmitActionForm.do" role="form">
						<div class="form-group">
							<h2>Create account</h2>
						</div>
						<div class="form-group">
							<label class="control-label" for="signupName">Your name</label> 
							<c:if test="${!submit}">
								<input type="text" name="signupName" id="signupName" maxlength="50" class="form-control">
							</c:if>
							<c:if test="${submit}">
								<c:out value="${form.signupName}"/>
							</c:if>
						</div>
						<div class="form-group">
							<label class="control-label" for="signupEmail">Email</label> 
							<c:if test="${!submit}">
								<input type="email" name="signupEmail" id="signupEmail" maxlength="50" class="form-control">
							</c:if>
							<c:if test="${submit}">
								<c:out value="${form.signupEmail}"/>
							</c:if>
						</div>
						<div class="form-group">
							<label class="control-label" for="signupEmailagain">Email again</label> 
							<c:if test="${!submit}">
								<input type="email" name="signupEmailagain" id="signupEmailagain" maxlength="50" class="form-control">
							</c:if>
							<c:if test="${submit}">
								<c:out value="${form.signupEmailagain}"/>
							</c:if>
						</div>
						<div class="form-group">
							<label class="control-label" for="signupPassword">Password</label>
							<c:if test="${!submit}">
								<input type="password" name="signupPassword" id="signupPassword" maxlength="25" class="form-control" placeholder="at least 6 characters">
							</c:if>
							<c:if test="${submit}">
								<c:out value="${form.signupPassword}"/>
							</c:if>
						</div>
						<div class="form-group">
							<label class="control-label" for="signupPasswordagain">Password again</label> 
							<c:if test="${!submit}">
								<input type="password" name="signupPasswordagain" id="signupPasswordagain" maxlength="25" class="form-control">
							</c:if>
							<c:if test="${submit}">
								<c:out value="${form.signupPasswordagain}"/>
							</c:if>
						</div>
						<c:if test="${!submit}">
							<div class="form-group">
								<input type="submit" name="submit" id="signupSubmit" class="btn btn-info btn-block" value="Create your account">
							</div>
							<p class="form-group">
								By creating an account, you agree to our <a href="#">Terms of
									Use</a> and our <a href="#">Privacy Policy</a>.
							</p>
							<hr>
							<p></p>
							Already have an account? <a href="#">Sign in</a>
							<p></p>
						</c:if>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>