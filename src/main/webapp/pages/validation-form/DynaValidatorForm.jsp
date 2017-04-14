<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DynaValidatorForm</title>
<link rel="stylesheet" type="text/css" href="../static/scripts/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../static/scripts/bootstrap/css/bootstrapApplication.css">
<link rel="stylesheet" type="text/css" href="../static/css/styleApplication.css">
<script type="text/javascript" src="../static/scripts/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../static/scripts/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="../static/scripts/js/validation/dynaValidatorForm.js"></script>
<!-- <script type="text/javascript" src="../static/scripts/js/validation/dynaValidatorFormValidation.js"></script> -->
<style type="text/css">
	body {
		background-color: #294765;
	}
</style>
</head>
<body>
	<div id="dynaValidatorForm" class="container">
		<form id="dynaValidatorFormForm" class="form-horizontal" role="form" method="post" action="/StrutsExample/validationform/SubmitDynaValidatorForm.do">
			<h2>Registration Form</h2>
			<div class="form-group">
				<label for="fullName" class="col-sm-3 control-label">Full Name<span class="required">*</span></label>
				<div class="col-sm-9">
					<input type="text" name="fullName" id="fullName" placeholder="Full Name" class="form-control" autofocus> 
					<label class="error-required-fields"><html:errors property="fullName"/></label>
					<span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-3 control-label">Email<span class="required">*</span></label>
				<div class="col-sm-9">
					<input type="email" name="email" id="email" placeholder="Email" class="form-control">
					<label class="error-required-fields"><html:errors property="email"/></label>
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">Password<span class="required">*</span></label>
				<div class="col-sm-9">
					<input type="password" name="password" id="password" placeholder="Password" class="form-control">
					<label class="error-required-fields"><html:errors property="password"/></label>
				</div>
			</div>
			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">Date of Birth<span class="required">*</span></label>
				<div class="col-sm-9">
					<input type="date" name="birthDate" id="birthDate" class="form-control">
					<label class="error-required-fields"><html:errors property="birthDate"/></label>
				</div>
			</div>
			<div class="form-group">
				<label for="country" class="col-sm-3 control-label">Country<span class="required">*</span></label>
				<div class="col-sm-9">
					<select name="country" id="country" class="form-control">
						<option>Afghanistan</option>
						<option>Bahamas</option>
						<option>Cambodia</option>
						<option>Denmark</option>
						<option>Ecuador</option>
						<option>Fiji</option>
						<option>Gabon</option>
						<option>Haiti</option>
					</select>
					<label class="error-required-fields"><html:errors property="country"/></label>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-3">Gender<span class="required">*</span></label>
				<div class="col-sm-6">
					<div class="row">
						<fieldset name="gender">
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio" name="gender" id="femaleRadio" value="Female">Female</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio" name="gender" id="maleRadio" value="Male">Male</label>
							</div>
							<div class="col-sm-4">
								<label class="radio-inline"> <input type="radio" name="gender" id="uncknownRadio" value="Unknown">Unknown</label>
							</div>
						</fieldset>
						<label class="error-required-fields"><html:errors property="gender"/></label>
					</div>
				</div>
			</div>
			<div class="form-group options">
				<label class="control-label col-sm-3">Meal Preference<span class="required">*</span></label>
				<div class="col-sm-9">
					<div class="checkbox">
						<label><input type="checkbox" name="mealPreference" id="calorieCheckbox" value="Low calorie">Low calorie</label>
					</div>
					<div class="checkbox">
						<label><input type="checkbox" name="mealPreference" id="saltCheckbox" value="Low salt">Low salt</label>
					</div>
					<label class="error-required-fields"><html:errors property="mealPreference"/></label>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<fieldset name="accept">
						<div class="checkbox">
							<label><input type="checkbox" name="accept" id="accept">I accept <a href="#">terms</a></label>
							<label class="error-required-fields"><html:errors property="accept"/></label>
						</div>
					</fieldset>
				</div>
			</div>
			<!-- /.form-group -->
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<input type="submit" class="btn btn-primary btn-block" value="Register"/>
				</div>
			</div>
		</form>
	</div>
</body>
</html>