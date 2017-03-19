<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">

<!-- Website CSS style -->
<link rel="stylesheet" type="text/css" href="css/style.css">

<!-- Website Font style -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">

<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>

<title>Admin</title>
</head>
<body>
	<div class="container">
		<div class="row main">
			<div class="panel-heading">
				<div class="panel-title text-center">
					<h1 class="title">Company Name</h1>
					<hr />
				</div>
			</div>
			<div class="main-login main-center">
				<form class="form-horizontal" method="post" action="SubmitDynaActionForm.do">
					<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">Your Name</label><i class="fa fa-asterisk text-danger"></i>
						<div class="cols-sm-10">
							<html:messages id="err_name" property="common.name.err">
								<div style="color:red">
									<bean:write name="err_name" />
								</div>
							</html:messages>
							<div class="input-group">
								<span class="input-group-addon">
									<i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" id="name" class="form-control" required />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="email" class="cols-sm-2 control-label">Your Email</label><i class="fa fa-asterisk text-danger"></i>
						<div class="cols-sm-10">
							<html:messages id="err_email" property="common.email.err">
								<div style="color:red">
									<bean:write name="err_email" />
								</div>
							</html:messages>
							<div class="input-group">
								<span class="input-group-addon">
									<i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="email" name="email" id="email" class="form-control" required />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Username</label><i class="fa fa-asterisk text-danger"></i>
						<div class="cols-sm-10">
							<html:messages id="err_username" property="common.username.err">
								<div style="color:red">
									<bean:write name="err_username" />
								</div>
							</html:messages>
							<div class="input-group">
								<span class="input-group-addon">
									<i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" name="username" id="username" class="form-control" required />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label><i class="fa fa-asterisk text-danger"></i>
						<div class="cols-sm-10">
							<html:messages id="err_password" property="common.password.err">
								<div style="color:red">
									<bean:write name="err_password" />
								</div>
							</html:messages>
							<div class="input-group">
								<span class="input-group-addon">
								<i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
								<input type="password" name="password" id="password" class="form-control" required />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label><i class="fa fa-asterisk text-danger"></i>
						<div class="cols-sm-10">
							<html:messages id="err_password2" property="common.password2.err">
								<div style="color:red">
									<bean:write name="err_password2" />
								</div>
							</html:messages>
							<div class="input-group">
								<span class="input-group-addon">
									<i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" name="password2" id="password2" class="form-control" required />
							</div>
						</div>
					</div>

					<div class="form-group ">
						<html:submit styleClass="btn btn-primary btn-lg btn-block login-button">Register</html:submit>
					</div>
					<div class="login-register">
						<a href="index.php">Login</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</body>
</html>