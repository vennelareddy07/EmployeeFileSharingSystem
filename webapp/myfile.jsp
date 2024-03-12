<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="uback.jsp" %> 
<%
String uname=(String)session.getAttribute("uname");

	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from files where uploadedby='"+uname+"'");
	 %>

	 
	 <div class="container">
	  <br><br><br><br>
	 <div class="h3 text-center text-uppercase">File Details</div>
	 <div class="table-responsive">
	 <table class="table table-bordered">
	 <tr><th>SNO<th>File Name</th><th>File Date</th><th>UploadedBy</th>
	 <th>ExpireDate</th><th>Download</th><th>Share</th><th>Delete</th></tr>
	 <% 
	 
	 int i=1;
	 
	 while(rs.next())
	 { String url="view.jsp?fileId="+rs.getInt("fileId")+"&owner="+rs.getString("uploadedby")+"&fname="+rs.getString("fname");
	   
	   String url2="download.jsp?fileId="+rs.getInt("fileId");
	   String url3="share.jsp?fileId="+rs.getInt("fileId")+"&role=owner&fname="+rs.getString("fname");
	 %>
		 <tr>
		 <td><%= i++ %></td>
		 <td><%=rs.getString("fname")%></td>
		 <td><%=rs.getString("fdate")%></td>
		 <td><%=rs.getString("uploadedby")%></td>
		 <td><%=rs.getString("expiredate")%></td>
		 
		 <td><a href="<%=url2%>" class="btn btn-primary btn-block">Download</a></td>
		<td><a href="<%=url3%>" class="btn btn-success btn-block">Share</a></td>
		 <td><a href="<%=url%>" class="btn btn-danger btn-block">Delete</a></td>
		 
		 </tr>
<% 	 }
	 %>
	 </table>
	 </div>
	 </div>
	 <%@ include file="footer.jsp" %>