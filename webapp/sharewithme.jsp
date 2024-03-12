<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="uback.jsp" %> 
<%
String uname=(String)session.getAttribute("uname");
//String shareto=request.getParameter("email");
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from share where shareto='"+uname+"'");
	 %>
	
	 
	 <div class="container">
	  <br><br><br><br>
	 <div class="h3 text-center text-uppercase">File Details</div>
	 <div class="table-responsive">
	 <table class="table table-bordered">
	 <tr><th>SNO</th><th>File Name</th><th>FileId</th><th>Share To</th><th>Share By<th>Date Of Share</th><th>Download</th></tr>
	 <% 
	 
	 
	 int i=1;
	 while(rs.next())
	 {
		 
		 String url1="view1.jsp?fileId="+rs.getInt("fileId");
		 String url2="download.jsp?fileId="+rs.getInt("fileId");
		 %>
		 <tr><td><%= i++%></td><td><%=rs.getString("fname")%></td><td><%=rs.getString("fileId")%></td><td><%=rs.getString("shareto")%></td><td><%=rs.getString("shareby")%></td><td><%=rs.getString("dateofshare")%></td><td><a href="<%=url2%>" class="btn btn-info btn-block">Download</a></td>
	
<% 	 }
	 %>
	 </table>
	 </div>
	 </div>
	 	 <%@ include file="footer.jsp" %>