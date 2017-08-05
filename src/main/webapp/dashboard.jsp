
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>Dashboard</title>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: center;
    padding: 2px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4fafc2;
    color: white;
}

td {

    color: black;
}
</style>
</head>
<body>
<form action="register" method="post" class="form-horizontal top-border" role="form">
<h3 align="center"> <b>Registered Players</b></h3>
<div class="container">
<table border="0px" bordercolor="grey" width=80% align="left">
<tr>
<th>Serial Number</th>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Mobile</th>
<th></th>
<th></th>
   <core:forEach items="${model.userList}" var="user">
    <tr>
        <td><core:out value="${user.firstName}"/></td>
        <td><core:out value="${user.lastName}"/></td>
        <td><core:out value="${user.email}"/></td>
        <td><core:out value="${user.mobile}"/></td>
        <td><a href="/edit?id=${user.userId}">Edit</a></td>
        <td><a href="/delete?id=${user.userId}">Delete</a></td>

    </tr>
    </core:forEach>
    <tr>
    <td><br>
	<input class="btn pull-left btn btn-info" type="submit"  action="register" value="New User">
	</td>
	</tr>
    </div>

</form>
</body>
</html>