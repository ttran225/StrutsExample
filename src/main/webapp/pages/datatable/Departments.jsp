<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Departments</title>
<link rel="stylesheet" type="text/css"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css">
<script type="text/javascript" src="//code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
	var dataSet = ${result};
	$(document).ready(function() {
		$('#example').DataTable({
			data: dataSet,
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2>Departments</h2>
			<table id="example" class="table table-striped table-bordered"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th class="col-md-6">Department Id</th>
						<th class="col-md-6">Department Name</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body>
</html>