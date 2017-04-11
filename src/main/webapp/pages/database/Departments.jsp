<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Departments</title>
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<h2>Departments</h2>
			<table class="table table-striped table-bordered" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Department Id</th>
						<th>Department Name</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dept" items="${departments}">
						<tr>
							<td>${dept.departmentId}</td>
							<td>${dept.departmentName}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>