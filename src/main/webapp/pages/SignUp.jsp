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
				<html:form styleClass="form-horizontal" method="post" action="/SubmitSignUp.do">
					<font color="red">
						<html:errors/>
					</font>
					<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">Your Name</label><i class="fa fa-asterisk text-danger"></i>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon">
									<i class="fa fa-user fa" aria-hidden="true"></i></span>
									<html:text property="name" styleClass="form-control" styleId="name"></html:text>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="email" class="cols-sm-2 control-label">Your Email</label><i class="fa fa-asterisk text-danger"></i>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon">
									<i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<html:text property="email" styleClass="form-control" styleId="email"></html:text>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="username" class="cols-sm-2 control-label">Username</label><i class="fa fa-asterisk text-danger"></i>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon">
									<i class="fa fa-users fa" aria-hidden="true"></i></span>
									<html:text property="username" styleClass="form-control" style="username"></html:text>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="cols-sm-2 control-label">Password</label><i class="fa fa-asterisk text-danger"></i>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon">
								<i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
								<html:password property="password" styleClass="form-control" styleId="password"></html:password>
							</div>
						</div>
					</div>

					<div class="form-group">
						<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label><i class="fa fa-asterisk text-danger"></i>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon">
									<i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<html:password property="password2" styleClass="form-control" styleId="password2"></html:password>
							</div>
						</div>
					</div>

					<div class="form-group ">
						<html:submit styleClass="btn btn-primary btn-lg btn-block login-button">Register</html:submit>
					</div>
					<div class="login-register">
						<a href="index.php">Login</a>
					</div>
				</html:form>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</body>
</html>