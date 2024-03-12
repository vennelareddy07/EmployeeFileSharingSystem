<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="uback.jsp" %> 
<%
String uname=(String)session.getAttribute("uname");
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from files where uploadedby !='"+uname+"'");
	 %>
	 
	 
	 
	 
	 
	 
	 
	 <div class="container">
	 <br><br><br><br>
	 
	 <div class="h3 text-center text-uppercase">File Details</div>
	 <div class="table-responsive">
	 <table class="table table-bordered">
	 <tr><th>SNO</th><th>File Name</th><th>ExpireDate</th><th>UplodedBy</th><th>Request to Admin</th><th>Request To Owner<th>Download</th></tr>
	 <% 
	 
	 
	 int i=1;
	 while(rs.next())
		 
		 
	 { String url="request.jsp?fileId="+rs.getInt("fileId")+"&role=admin&fname="+rs.getString("fname");
	  String url2="request.jsp?fileId="+rs.getInt("fileId")+"&role=owner&fname="+rs.getString("fname")+"&owner="+rs.getString("uploadedby");
	   String url3="download2.jsp?fileId="+rs.getInt("fileId");
	 %>
		 
		 <tr><td><%= i++%></td><td><%=rs.getString("fname")%></td><td><%=rs.getString("expiredate")%></td><td><%=rs.getString("uploadedby")%></td>
		 <td><a href="<%=url%>" class="btn btn-info btn-block">Request To Admin</a></td><td><a href="<%=url2%>" class="btn btn-info btn-warning">Request To Owner</a></td><td><a href="<%=url3%>" class="btn btn-primary btn-block">Download</a></td></tr>
<% 	 }
	 %>
	 </table>
	 </div>
	 </div>
	 <%@ include file="footer.jsp" %>