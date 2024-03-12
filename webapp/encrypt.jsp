<%@ include file="cback.jsp" %> 
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Encrypt file </div>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="encryptsave.jsp" method="post">
<div class="form-group">
    <label class="label-control">Name:</label>
	
	
	
	
	
	
	<input type="text" name="name" class="form-control" required>
	</div>
	<div class="form-group">
    <label class="label-control">Mobile Number:</label>
	<input type="number" name="mobile" class="form-control"  required>
	</div>
<div class="form-group">
    <label class="label-control">Address:</label>
	<input type="text" name="address" class="form-control"  required>
	</div>

<input type="submit" class="btn btn-primary btn-block" value="submit">

</form>
</body>
</html>
</div>
</div>
