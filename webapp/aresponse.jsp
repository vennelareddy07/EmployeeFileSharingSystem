<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="aback.jsp" %> 
<%
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from request where rto='Authority' and status='requested'");
	 %>
	 <div class="container">
	 <div class="h3 text-center text-uppercase">Request Details</div>
	 <div class="table-responsive">
	 <table class="table table-bordered">
	 <tr><th>File Id</th><th>File Name</th><th>Request By</th><th>Send Key</th></tr>
	 <% 
	 while(rs.next())
	 { String url="response.jsp?requestId="+rs.getInt("requestId")+"&role=Authority";
	 
	 %>
		 <tr><td><%=rs.getString("fileId")%></td><td><%=rs.getString("fname")%></td><td><%=rs.getString("rby")%></td><td><a href="<%=url%>" class="btn btn-info btn-block">Send key</a></td></tr>
<% 	 }
	 %>
	 </table>
	 </div>
	 </div>