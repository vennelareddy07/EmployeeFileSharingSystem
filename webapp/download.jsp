<%@ include file="uback.jsp" %> 
<%@page import="java.sql.*,databaseconnection.*,action.*" %>

<% 
int fileId=Integer.parseInt(request.getParameter("fileId"));

Connection con=DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from files where fileId='"+fileId+"'");
if(rs.next())
{
	
	Email.sendMail("File Download Key", "Your Password is "+ rs.getString("tkey"), rs.getString("uploadedby"), rs.getString("uploadedby"));

	
}

%>

<div class="container-fluid">
<br><br><br><br>
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Download File</div>
 
 
 
 
 
 
 
 
 
  <form action="download3.jsp" >





<input type="hidden" name=fileId value="<%=fileId%>">
  
  <div class="form-group">
    <label class="label-control">Enter Secret key</label>
    <input type="text" name="akey" class="form-control" required>
  </div>
  
  <input type="submit" class="btn btn-primary btn-block" value="Download">
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>

