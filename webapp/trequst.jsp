<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="uback.jsp" %> 
<%
String uname=(String)session.getAttribute("uname");
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from request where rby='"+uname+"' and rto='admin'");
	 %>
	 <div class="container">
	  <br><br><br><br>
	 <div class="h3 text-center text-uppercase">Request Details</div>
	 <div class="table-responsive">
	 <table class="table table-bordered">
	 <tr><th>SNO</th><th>File Id</th><th>File Name</th><th>Status</th></tr>
	 <% 
	 int i=1;
	 while(rs.next())
	 { String url="response.jsp?fileId="+rs.getInt("fileId")+"&role=Trustee";
	 
	 %>
		 <tr><td><%= i++%></td><td><%=rs.getString("fileId")%></td><td><%=rs.getString("fname")%></td><td><%=rs.getString("status")%></td></tr>
<% 	 }
	 %>
	 </table>
	 </div>
	 </div>
	 	 <%@ include file="footer.jsp" %>