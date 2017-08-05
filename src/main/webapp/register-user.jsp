<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-backstretch/2.0.4/jquery.backstretch.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
.top-border { border-top: solid 1px #CCCCCC; width: 100%; padding: 20px 0px;}
.padding-top-ten-px { padding-top: 30px; }

.fillbackground{
	background-color: #d0d6d8;

}
.pht{
width: 110px;
height:40px;
padding: 10px 10px;
background-color: #ffa64d;
border-radius: 5px;
}

.panel.panel-default{
background-color: #2f758c;
}

.form-group, .panel-body{
color: white;
}
ul.badge{
float: right;

}
.form-group.col-md-6.form-control{
padding-left: 10px;
}

.register_header{
padding-left:15px;
}

html {
  background: url(/resources/static/images/back_grnd1.jpg) no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
<core:choose>
    <core:when test="${model.action =='new'}">
        <title>Register User</title>
    </core:when>
    <core:otherwise>
        <title>Edit User</title>
    </core:otherwise>
</core:choose>
</head>

<body class="fillbackground">
<div class="container">
<form action="save" method="post" class="form-horizontal top-border" role="form">
<div class="row">
<div class="register_header">
<core:choose>
    <core:when test="${model.action == 'new'}">
        <h3>Register a new user</h3>
    </core:when>
    <core:otherwise>
        <h3>Edit user</h3>
    </core:otherwise>
</core:choose>

</div>
</div>
  <div class="row">
  	<div class="col-md-6 col-sm-6">
     <div class="panel panel-default">
			<div class="panel-body">

            </div><!--/panel-body-->



		  <div class="form-group">
            <label class="col-md-3 control-label">First Name:</label>
            <div class="col-md-6">
              <input class="form-control" type="text" name="firstname" id="firstname" value="${model.user.firstName}" required="required">
            </div>
          </div>
		  <div class="form-group">
            <label class="col-md-3 control-label">Last Name:</label>
            <div class="col-md-6">
              <input class="form-control" type="text" name="lastname" id="lastname" value="${model.user.lastName}" required="required" >
            </div>
          </div>
		  <div class="form-group">
            <label class="col-md-3 control-label">Address:</label>
            <div class="col-md-6">
              <input class="form-control" type="text" name="address" value="${model.user.address}" id="address" >
            </div>
          </div>
		  <div class="form-group">
            <label class="col-md-3 control-label">City:</label>
            <div class="col-md-6">
              <input class="form-control" type="text" name="city" id="city" value="${model.user.city}">
            </div>
          </div>

		  <div class="form-group">
            <label class="col-md-3 control-label">Post Code:</label>
            <div class="col-md-6">
              <input class="form-control" type="text" name="postcode" id="postcode" value="${model.user.postCode}">
            </div>
          </div>
		  <div class="form-group">
            <label class="col-md-3 control-label">Email:</label>
            <div class="col-md-6">
              <input class="form-control" type="text" name="email" id="email" required="required" value="${model.user.email}" >
            </div>
          </div>
		  <div class="form-group">
            <label class="col-md-3 control-label">Mobile:</label>
            <div class="col-md-6">
              <input class="form-control" type="text" name="mobile" id="mobile" required="required" value="${model.user.mobile}" >
            </div>
          </div>

         <div class="form-group">
			<label class="col-md-3 control-label"></label>
			<div class="col-md-8">

<core:choose>
    <core:when test="${model.action == 'new'}">
        <input type="hidden" name="action" value="register" />

    </core:when>
    <core:otherwise>
        <input type="hidden" name="action" value="edit" />
    </core:otherwise>
</core:choose>
<input type="hidden" name="id" value="${model.user.userId}" />


					<input type="submit" class="btn btn-success" action="save" value="Save">
				    <input  type="button"  class="btn" onclick="window.history.go(-1); return false;" value="Back" />
			</div>
		</div>


		</div><!--/panel-->
    </div>
  </div>
</form><!--/form-->
</div>

</body><!--/body end here-->
<script>

</script>
</html>