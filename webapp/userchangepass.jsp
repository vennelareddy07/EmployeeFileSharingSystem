<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="uback.jsp" %>
<br><br><br>
<div class="container-fluid">
<br><br><br><br>
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Change Password </div>
<body>
<form action="userchangepasssave.jsp" id="changepass" method="post" name="changepass">
<table>
<div class="form-group">
     
     
     
     
      <label for="name">Email</label>
<input type="email" class="form-control" id="username" name="name" required>
</div>


<div class="form-group">
<label for="name">old Password:</label>
<input type="password" class="form-control" id="oldpass" name="oldpwd" required>
</div>
<div class="form-group">
<label for="name">New Password:</label>
<input type="password" class="form-control" id="newpass" name="newpwd" required>
</div>
<div class="form-group">
<label for="name">Confirm Password:</label>
<input type="password" class="form-control" id="conpass" name="conpwd" required>
</div>
<input type="submit" class="btn btn-primary" value="submit" onclick="return Validate()">
</table>
<script type="text/javascript">
    function Validate() {
        var newpwd = document.getElementById("newpass").value;
        var conpwd = document.getElementById("conpass").value;
        if (newpwd != conpwd) {
            alert("Passwords do not match.");
            return false;
        }
        else
        	{
        return true;
        	}
    }
</script>
</form> 
</div>
</div>
</div>
</div>
	 	 	 <%@ include file="footer.jsp" %>