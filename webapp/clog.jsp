<%@include file="mback.jsp" %>
<br><br><br><br><br>
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Admin Login </div>
  <form action="log1.jsp" >
<input type="hidden" name=role value="cloud">
  <div class="form-group">
    <label class="label-control">User Name</label>
    <input type="text" name="uname" class="form-control" required>
  </div>

  <div class="form-group">
    <label class="label-control">Password</label>
    <input type="password" name="pass" class="form-control" required>
  </div>
  
  <div class="form-group">
    <label class="label-control">Sceret Key</label>
    <input type="text" name="skey" class="form-control" required>
  </div>
  
  <input type="submit" class="btn btn-primary btn-block" value="Login">
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>

<%@ include file="footer.jsp" %>
