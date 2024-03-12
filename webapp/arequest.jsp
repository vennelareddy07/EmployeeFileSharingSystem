<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="uback.jsp" %> 
<%
String uname=(String)session.getAttribute("uname");
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from request where rby='"+uname+"' and rto='Authority'");
	 %>
	 <div class="container">
	 <div class="h3 text-center text-uppercase">Request Details</div>
	 <div class="table-responsive">
	 <table class="table table-bordered">
	 <tr><th>Request Id</th><th>File Id</th><th>File Name</th><th>Status</th></tr>
	 <% 
	 while(rs.next())
	 { String url="response.jsp?fileId="+rs.getInt("fileId")+"&role=Trustee";
	 
	 %>
		 <tr><td><%=rs.getString("requestId")%></td><td><%=rs.getString("fileId")%></td><td><%=rs.getString("fname")%></td><td><%=rs.getString("status")%></td></tr>
<% 	 }
	 %>
	 </table>
	 </div>
	 </div>