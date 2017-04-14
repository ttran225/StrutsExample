<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LazyForm</title>
<link rel="stylesheet" type="text/css" href="../static/scripts/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../static/scripts/bootstrap/css/bootstrapApplication.css">
<link rel="stylesheet" type="text/css" href="../static/css/styleApplication.css">
<script type="text/javascript" src="../static/scripts/js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../static/scripts/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="../static/scripts/js/jqueryApplication.js"></script>
<script type="text/javascript" src="../static/scripts/js/validate.js"></script>
<style type="text/css">
	body {
		padding-top: 20px;
		padding-bottom: 20px;
		background-color: #29652b;
	}
</style>
</head>
<body id="lazyForm">
	<div class="container">
		<h1 class="well">Registration Form</h1>
		<div class="col-lg-12 well">
			<div class="row">
				<form id="lazyFormForm" method="post" action="/StrutsExample/validationform/SubmitLazyForm.do">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name<span class="required">*</span></label>
								<input type="text" name="firstname" id="firstname" placeholder="Enter First Name Here.." class="form-control" >
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name<span class="required">*</span></label>
								<input type="text" name="lastname" id="lastname" placeholder="Enter Last Name Here.." class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label>Address<span class="required">*</span></label>
							<textarea name="address" id="address" placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>City<span class="required">*</span></label>
								<input type="text" name="city" id="city" placeholder="Enter City Name Here.." class="form-control">
							</div>
							<div class="col-sm-4 form-group">
								<label>State<span class="required">*</span></label>
								<input type="text" name="state" id="state" placeholder="Enter State Name Here.." class="form-control">
							</div>
							<div class="col-sm-4 form-group">
								<label>Zip<span class="required">*</span></label>
								<input type="text" name="zip" id="zip" placeholder="Enter Zip Code Here.." class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Title<span class="required">*</span></label> 
								<input type="text" name="title" id="title" placeholder="Enter Designation Here.." class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								<label>Company<span class="required">*</span></label> 
								<input type="text" name="company" placeholder="Enter Company Name Here.." class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label>Phone Number<span class="required">*</span></label> 
							<input type="text" name="phone" id="phone" placeholder="Enter Phone Number Here.." class="form-control">
						</div>
						<div class="form-group">
							<label>Email Address<span class="required">*</span></label>
							<input type="email" name="email" id="email" placeholder="Enter Email Address Here.." class="form-control">
						</div>
						<div class="form-group">
							<label>Website<span class="required">*</span></label> 
							<input type="text" name="website" id="website" placeholder="Enter Website Name Here.." class="form-control">
						</div>
						<button type="submit" class="btn btn-lg btn-info">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>