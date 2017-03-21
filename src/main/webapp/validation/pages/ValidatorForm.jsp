<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ValidatorForm</title>
<link
	href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css"
	rel="stylesheet">
<style></style>
<script type="text/javascript"
	src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="span12">
				<div class="" id="loginModal">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">�</button>
						<h3>Have an Account?</h3>
					</div>
					<div class="modal-body">
						<div class="well">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#login" data-toggle="tab">Login</a></li>
								<li><a href="#create" data-toggle="tab">Create Account</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div class="tab-pane active in" id="login">
									<form class="form-horizontal" action="" method="POST">
										<fieldset>
											<div id="legend">
												<legend class="">Login</legend>
											</div>
											<div class="control-group">
												<!-- Username -->
												<label class="control-label" for="username">Username</label>
												<div class="controls">
													<input type="text" id="username" name="username"
														placeholder="" class="input-xlarge">
												</div>
											</div>

											<div class="control-group">
												<!-- Password-->
												<label class="control-label" for="password">Password</label>
												<div class="controls">
													<input type="password" id="password" name="password"
														placeholder="" class="input-xlarge">
												</div>
											</div>


											<div class="control-group">
												<!-- Button -->
												<div class="controls">
													<button class="btn btn-success">Login</button>
												</div>
											</div>
										</fieldset>
									</form>
								</div>
								<div class="tab-pane fade" id="create">
									<form id="tab">
										<label>Username</label> <input type="text" value=""
											class="input-xlarge"> <label>First Name</label> <input
											type="text" value="" class="input-xlarge"> <label>Last
											Name</label> <input type="text" value="" class="input-xlarge">
										<label>Email</label> <input type="text" value=""
											class="input-xlarge"> <label>Address</label>
										<textarea value="Smith" rows="3" class="input-xlarge">                        </textarea>

										<div>
											<button class="btn btn-primary">Create Account</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>