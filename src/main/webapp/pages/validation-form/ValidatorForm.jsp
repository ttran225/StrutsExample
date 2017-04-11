<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ValidatorForm</title>
<link rel="stylesheet" type="text/css" href="webapp/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="webapp/bootstrap/css/bootstrapApplication.css">
<link rel="stylesheet" type="text/css" href="webapp/css/styleApplication.css">
<script type="text/javascript" src="webapp/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="webapp/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="webapp/js/validation/validatorForm.js"></script>
<script type="text/javascript" src="webapp/js/validation/validatorFormValidation.js"></script>
<style type="text/css">
	body {
		padding-top: 90px;
		background-color: #2e3d75;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		var action = '${active}';
		if (action == "" || action == "LOGIN") {
			$('#register-form-link').removeClass('active');
			$('#login-form-link').addClass('active');
			$('#login-form').show();
			$('#register-form').hide();
		} else {
			$('#login-form-link').removeClass('active');
			$('#register-form-link').addClass('active');
			$('#register-form').show();
			$('#login-form').hide();
		}
	});
</script>
</head>
<body>
	<div id="validatorForm" class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="/StrutsExample/validationform/SubmitValidatorForm.do" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username">
										<c:if test="${!empty active && active == 'LOGIN'}"><label class="error-required-fields"><html:errors property="username"/></label></c:if>
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
										<c:if test="${!empty active && active == 'LOGIN'}"><label class="error-required-fields"><html:errors property="password"/></label></c:if>
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember"> <label for="remember">Remember Me</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="http://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
									<input type="hidden" name="action" class="action">
								</form>
								<form id="register-form" action="/StrutsExample/validationform/SubmitValidatorForm.do" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
										<c:if test="${!empty active && active == 'REGISTER'}"><label class="error-required-fields"><html:errors property="username"/></label></c:if>
									</div>
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="2" class="form-control" placeholder="Email Address" value="">
										<c:if test="${!empty active && active == 'REGISTER'}"><label class="error-required-fields"><html:errors property="email"/></label></c:if>
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="3" class="form-control" placeholder="Password">
										<c:if test="${!empty active && active == 'REGISTER'}"><label class="error-required-fields"><html:errors property="password"/></label></c:if>
									</div>
									<div class="form-group">
										<input type="password" name="password2" id="confirm-password" tabindex="4" class="form-control"
											placeholder="Confirm Password">
										<c:if test="${!empty active && active == 'REGISTER'}"><label class="error-required-fields"><html:errors property="password2"/></label></c:if>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
									<input type="hidden" name="action" class="action">
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>