<!DOCTYPE html>
<%@page import="com.dao.Empdao"%>
<%@page import="java.util.*"%>
<%@page import="com.pojo.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>


<style type="text/css">
body {
	padding: 10px;
}
</style>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>



</head>
<body>

	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">Basic details</h3>
		</div>
		<div class="panel-body">
			<form action='savadata.do'>
				<div class="form-group">
					<label for="firstname">First name:</label> <input type="text"
						class="form-control" id="firstname" name="firstname"
						placeholder="Email">
				</div>
				<div class="form-group">
					<label for="Lastname">Last name</label> <input type="text"
						class="form-control" id="Lastname" name="lastname"
						placeholder="Password">
				</div>


				<button type="submit" class="btn btn-default">Submit</button>

			</form>
		</div>
	</div>




	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">Basic details list</h3>
		</div>
		<div class="panel-body">
		
		<table class="table table-bordered">

		<thead>
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Action</th>
			</tr>
		</thead>

	</table>


	<%
		Empdao dao = new Empdao();

		List<Basic> basicList = dao.selectAll();

		for (Basic basic : basicList) {
	%>

	<tr>
		<td>
			<%
				out.println(basic.getId());
			%>
		</td>
		<td>
			<%
				out.println(basic.getFirstname());
			%>
		</td>
		<td>
			<%
				out.println(basic.getLastname());
			%>
		</td>
		<td><a href="#">Edit</a> / <a
			href="deleteEmp.do?id=<%out.println(basic.getId());%>">Delete</a></td>

	</tr>



	<%
		}
	%>
		
		
		</div>
	</div>

	




</body>
</html>