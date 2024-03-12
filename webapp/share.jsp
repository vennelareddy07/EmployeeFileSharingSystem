<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="uback.jsp" %> 
<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Sharing file </div>
<%
String uname=(String)session.getAttribute("uname");
String fileId=request.getParameter("fileId");
String fname=request.getParameter("fname");
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email!='"+uname+"'");
	%>
	<form action="shareuse.jsp" method="post">
	
	
	
	<div class="form-group">
    <label class="label-control">File Id:</label>
	<input type="text" name="fid" class="form-control" value="<%=fileId%>" required>
	</div>
	<div class="form-group">
    <label class="label-control">File name:</label>
	<input type="text" name="fname" class="form-control" value="<%=fname%>" required>
	</div>
	<div class="form-group">
    <label class="label-control">Share to:</label>
	<select name="email" class="form-control">
	<option>Select User</option>
	 <% 
	 
	 while(rs.next())
	 {
		 
	
	 %>
	 
<option><%=rs.getString("email")%></option>



<%
}%>
</select>
</div>
<input type="submit" class="btn btn-primary btn-block" value="Share">
</form>
</div>
</div>
</body>
</html>