<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LazyForm</title>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrapApplication.css">
<link rel="stylesheet" type="text/css" href="css/styleApplication.css">
<script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/jqueryApplication.js"></script>
<script type="text/javascript" src="js/validate.js"></script>
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
				<form id="lazyFormForm" method="post" action="validationform/SubmitLazyForm.do">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>First Name</label><i class="fa fa-asterisk text-danger"></i>
								<input type="text" name="firstname" id="firstname" placeholder="Enter First Name Here.." class="form-control" >
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label><i class="fa fa-asterisk text-danger"></i> 
								<input type="text" name="lastname" id="lastname" placeholder="Enter Last Name Here.." class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label>Address</label><i class="fa fa-asterisk text-danger"></i>
							<textarea name="address" id="address" placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>City</label><i class="fa fa-asterisk text-danger"></i> 
								<input type="text" name="city" id="city" placeholder="Enter City Name Here.." class="form-control">
							</div>
							<div class="col-sm-4 form-group">
								<label>State</label><i class="fa fa-asterisk text-danger"></i> 
								<input type="text" name="state" id="state" placeholder="Enter State Name Here.." class="form-control">
							</div>
							<div class="col-sm-4 form-group">
								<label>Zip</label><i class="fa fa-asterisk text-danger"></i>
								<input type="text" name="zip" id="zip" placeholder="Enter Zip Code Here.." class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Title</label> 
								<input type="text" name="title" id="title" placeholder="Enter Designation Here.." class="form-control">
							</div>
							<div class="col-sm-6 form-group">
								<label>Company</label> 
								<input type="text" name="company" placeholder="Enter Company Name Here.." class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label>Phone Number</label><i class="fa fa-asterisk text-danger"></i> 
							<input type="text" name="phone" id="phone" placeholder="Enter Phone Number Here.." class="form-control">
						</div>
						<div class="form-group">
							<label>Email Address</label><i class="fa fa-asterisk text-danger"></i> 
							<input type="email" name="email" id="email" placeholder="Enter Email Address Here.." class="form-control">
						</div>
						<div class="form-group">
							<label>Website</label> 
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