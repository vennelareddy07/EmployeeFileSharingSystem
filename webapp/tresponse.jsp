<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="cback.jsp" %> 
<%
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from request where rto='admin' and status='requested'");
	 %>
	 <div class="container">
	 <br><br><br>
	 
	 <div class="h3 text-center text-uppercase">Request Details</div>
	 <div class="table-responsive">
	 <table class="table table-bordered">
	 
	 
	 
	 
	 
	 <tr><th>SNO</th><th>File Name</th><th>Date</th><th>Request By</th><th>Send Key</th></tr>
	 <% 
	 int i=1;
	 while(rs.next())
	 { 
		 String url="response.jsp?requestId="+rs.getInt("requestId")+"&role=admin";
	 
	 %>
		 <tr><td><%= i++%></td><td><%=rs.getString("fname")%></td><td><%=rs.getString("datee")%></td><td><%=rs.getString("rby")%></td><td><a href="<%=url%>" class="btn btn-info btn-block">Send key</a></td></tr>
<% 	 }
	 %>
	 </table>
	 </div>
	 </div>
	 <%@ include file="footer.jsp" %>