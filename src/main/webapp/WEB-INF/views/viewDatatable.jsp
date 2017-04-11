<%@ page import="java.util.*"%><!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
 var path = '${pageContext.request.contextPath}';
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link href="http://cdn.datatables.net/1.10.3/css/jquery.dataTables.css" rel="stylesheet" type="text/css">
<link href="http://datatables.net/release-datatables/extensions/ColVis/css/dataTables.colVis.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://cdn.datatables.net/1.10.3/js/jquery.dataTables.min.js"></script>
<script src="http://datatables.net/release-datatables/extensions/ColVis/js/dataTables.colVis.js"></script>
<script src="http://jquery-datatables-column-filter.googlecode.com/svn/trunk/media/js/jquery.dataTables.columnFilter.js"></script>
<script src="//cdn.datatables.net/plug-ins/1.10.13/api/fnSetFilteringDelay.js"></script>
<script src="//cdn.datatables.net/plug-ins/1.10.13/api/fnStandingRedraw.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/custom-datatable.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugin/fnStandingRedraw.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/plugin/fnSetFilteringDelay.js"></script>
<style>
tfoot input {
	width: 100%;
	padding: 3px;
	box-sizing: border-box;
}

.tableHeader {
	text-align: left;
}

tfoot {
	display: table-header-group;
}

.dataTables_length {
	position: absolute;
	top: 10px;
	left: 220px;
}

.dataTables_info {
	position: absolute;
	top: 0px;
	left: 5px;
}

.ColVis {
	padding-right: 10px;
	padding-top: 5px;
}

.dataTables_filter {
	position: absolute;
	top: 10px;
	left: 200px;
	font-size: 15px;
}

.dataTables_filter input {
	height: 22px;
	width: 150px
}

input {
	-moz-border-radius: 15px;
	border-radius: 3px;
	border: solid 1px #c7c7c7;
	padding: 5px;
}

table.dataTable tbody td {
	padding: 5px;
	padding-left: 20px;
}
</style>
<title>Employees</title>
</head>
<body>
	<form>
		<div class="container">
			<div class="row">
				<h2>Employees</h2>
				<table width="100%" border="0" margin="0" padding="0"
					class="row-border tableHeader" id="personTable">
					<thead>
						<tr>
							<th>Employee No</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Birth Date</th>
							<th>Gender</th>
							<th>Hire Date</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</form>
</body>

</html>