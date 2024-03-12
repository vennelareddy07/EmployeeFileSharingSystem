<%@ include file="mback.jsp" %> 
<br><br><br><br><br>

<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">New User SignUp </div>
  <form action="reg1.jsp" method="post" >
  	  <div class="form-group">
    <label class="label-control">Full Name:</label>
    <input type="text" name="name" class="form-control" required>
  </div>
  <div class="form-group">
    <label class="label-control">Email</label>
    
    <input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="email" class="form-control" required>
  </div>
  <div class="form-group">
    <label class="label-control">Password</label>
    <input type="password" pattern=".{6,}" title="Six or more characters" name="pass" class="form-control" required>
  </div>
  <div class="form-group">
    <label class="label-control">Select Gender</label>
    <input type="radio" name="gender" value="male" requried checked="true">Male
    <input type="radio" name="gender" value="female">Female
  </div>
  <div class="form-group">
    <label class="label-control">Phone</label>
    <input type="number" pattern="^\d{10}$" name="phone" class="form-control" required>
  </div>

  <div class="form-group">
    <label class="label-control">Address</label>
    <input type="text" name="address" class="form-control" required>
  </div>
<div class="form-group">
    <label class="label-control">Emp ID</label>
    <input type="text" name="empid" class="form-control" required>
  </div>
  <div class="form-group">
    <label class="label-control">Role</label><br>
    <select name="role" class="form-control" required>
    <option value="-1">select role</option>
    <option value="java developer">java developer</option>
    <option value="android develpoer">Andriod developer</option>
    <option value="dotnet developer">DotNET developer</option>
        <option value="web developer">Web developer</option>
    
    <option value="software developer">Software Tester</option>
        <option value="manager">Manager</option>
    
     <option value="Designer">Designer</option>
    </select>
  </div>
  <input type="submit" class="btn btn-primary btn-block" value="Register">
  </form>
  <b><center>
  <a href="ulog.jsp">Existing User?</a>
  </center></b>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>
<%@ include file="footer.jsp" %>
