<%@ include file="uback.jsp" %> 
<%@page import="java.sql.*,databaseconnection.*" %>


<%
String name=(String)session.getAttribute("uname");

String email=null;
String gender=null;
long phone=0;
String address=null;
String empid=null;
String role=null;

Connection con=DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from users where email='"+name+"' or empid='"+name+"'");
while(rs.next())
{
name=rs.getString(2);
email=rs.getString(3);
gender=rs.getString(5);
phone=rs.getLong(6);
address=rs.getString(7);
empid=rs.getString(8);
role=rs.getString(9);


%>
<div class="container-fluid">
<br><br><br><br>
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">User Edit </div>
  <form action="updateprofsave.jsp" method="post" >
  	  <div class="form-group">
    <label class="label-control">Name:</label>
    <input type="text" name="name" class="form-control" value="<%=name%>"required>
  </div>
  <div class="form-group">
    <label class="label-control">Email</label>
    <input type="email" name="email" class="form-control" value="<%=email%>"required readonly>
  </div>
  
 
 
  <div class="form-group">
    <label class="label-control" >Select Gender</label>
    <input type="radio" name="gender" value="male" <%=(gender.equals("male"))?"Checked":""%> >Male
    <input type="radio" name="gender"  value="female" <%=(gender.equals("female"))?"Checked":""%>>Female
  </div>
  <div class="form-group">
    <label class="label-control">Phone</label>
    <input type="number" name="phone" class="form-control" value="<%=phone%>" required>
  </div>

  <div class="form-group">
    <label class="label-control">Address</label>
    <input type="text" name="address" class="form-control" value="<%=address%>" required>
  </div>
<div class="form-group">
    <label class="label-control">Emp ID</label>
    <input type="text" name="empid" class="form-control" value="<%=empid%>" required>
  </div>
  
  
  
  
  
  
  
  <div class="form-group">
    <label class="label-control">Role</label><br>
    <select name="role" class="form-control" required>
    <option value="-1">select role</option>
    <option value="java developer" <%=(role.equalsIgnoreCase("java developer"))?"Selected":""%>>java developer</option>
    <option value="Android developer"<%=(role.equalsIgnoreCase("Android developer"))?"Selected":""%>>Andriod developer</option>
    <option value=".Net developer"<%=(role.equalsIgnoreCase(".NET developer"))?"Selected":""%>>.NET developer</option>
    <option value="software developer"<%=(role.equalsIgnoreCase("software devloper"))?"Selected":""%>>software developer</option>
    
    
    </select>
    
  </div>
 
  <input type="submit" class="btn btn-primary btn-block" value="Update">
  </form>
 
  </div>
  </div>
   
  <div class="col-md-4"></div>
</div>
</div>
 <%
}
%>

	 	 <%@ include file="footer.jsp" %>
