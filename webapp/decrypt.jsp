<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*,action.*"%>
<%@ include file="cback.jsp" %> 
<%

	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from encdec");
	%>
	
	<div class="container">
	 <div class="h3 text-center text-uppercase">File Details</div>
	 <div class="table-responsive">
	 <table class="table table-bordered">
	 
	 
	 
	 
	 <tr><th>Id</th><th>Name</th><th>Mobile</th><th>Address</th></tr>
	 <% 
	 while(rs.next())
	 {
		 
		 String name = AES.decrypt(rs.getString("name"), "1a1s");
		 String mobile = AES.decrypt(rs.getString("mobile"), "1a1s");
		 String address = AES.decrypt(rs.getString("address"), "1a1s");
		 %>
		 
		 <tr><td><%=rs.getInt("id")%></td><td><%= name%></td><td><%=mobile%></td><td><%=address%></td></tr>
	
<% 	 }
	 %>
	
	 </table>
	 </div>
	 </div>