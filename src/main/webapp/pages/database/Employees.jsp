<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Employees</title>
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<h2>Employees</h2>
			<table class="table table-striped table-bordered"
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
				<tbody>
					<c:forEach var="emp" items="${employees}">
						<tr>
							<td>${emp.employeeId}</td>
							<td>${emp.firstName}</td>
							<td>${emp.lastName}</td>
							<td>${emp.birthDate}</td>
							<td>${emp.gender}</td>
							<td>${emp.hireDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>