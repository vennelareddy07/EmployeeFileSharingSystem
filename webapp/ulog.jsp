<%@include file="mback.jsp" %>
<br><br><br><br><br>

<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">User Login </div>
  <form action="log1.jsp" >
<input type="hidden" name=role value="user">
  <div class="form-group">
    
    
    
    
    <label class="label-control">Email/Empid</label>
    <input type="text" name="uname" class="form-control" required>
  </div>

  <div class="form-group">
    <label class="label-control">Password</label>
    <input type="password" name="pass" class="form-control" required>
  </div>
  
  <input type="submit" class="btn btn-primary btn-block" value="Login">
  </form>
  <b><center>
  <a href="reg.jsp">New User?</a> OR 
  <a href="forgot.jsp">Forgot Password?</a>
  </center></b>
  </div>
  </div>
  <div class="col-md-4"></div>

</div>
</div>
<%@ include file="footer.jsp" %>

