<%@include file="mback.jsp" %>
<br><br><br><br><br>

<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Forgot Password </div>
  <form action="forgotaction.jsp" >
	<input type="hidden" name=role value="user">
  	<div class="form-group">
  
    <label class="label-control">Email</label>
    <input type="text" name="email" class="form-control" required>
  </div>
  <input type="submit" class="btn btn-primary btn-block" value="Send Me Password">
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>

</div>
</div>
<%@ include file="footer.jsp" %>

