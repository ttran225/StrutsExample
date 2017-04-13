<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Employees</title>
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css">
<script type="text/javascript" src="//code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="../static/scripts/common.js"></script>
<script type="text/javascript">
	var result = ${result};
	$(document).ready(function() {
		var employees = $('#example').DataTable({
			responsive: false,
			lengthChange:false,
		    columns: [
		              { data : "employeeId"},
		              { data : "firstName"},
		              { data : "lastName"},
		              { data : "birthDate"},
		              { data : "gender"},
		              { data : "hireDate"}
		          ]
		});
		pushDataToTable(employees, result);
	});
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2>Employees</h2>
			<table id="example" class="table table-striped table-bordered"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Employee Id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Birth date</th>
						<th>Gender</th>
						<th>Hire Date</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
</body>
</html>