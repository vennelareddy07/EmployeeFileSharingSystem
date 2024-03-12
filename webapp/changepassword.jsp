<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="cback.jsp" %>
<br><br><br>
<div class="container-fluid">
<br><br><br>

<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Change Password </div>
<body>
<form action="chnagepassword1.jsp" method="post">
<table>
<div class="form-group">
     
     
     
     
      <label for="name">User NAME:</label>
<input type="text" class="form-control" id="username" placeholder="Enter user name" name="username" required>
</div>


<div class="form-group">
<label for="name">old Password:</label>
<input type="password" class="form-control" id="oldpass" placeholder="Enter oldpass" name="oldpwd" required>
</div>
<div class="form-group">
<label for="name">New Password:</label>
<input type="password" class="form-control" id="newpass" placeholder="Enter newpass" name="newpwd" required>
</div>
<div class="form-group">
<label for="name">Confirm Password:</label>
<input type="password" class="form-control" id="conpass" placeholder="Enter confirmpass" name="conpwd" required>
</div>
<input type="submit" class="btn btn-primary" value="submit">
</table>
</form> 
</div>
</div>
</div>
</div>
<%@ include file="footer.jsp" %>