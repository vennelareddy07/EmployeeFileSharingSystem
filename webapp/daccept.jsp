<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="tback.jsp" %> 
<%
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	Statement st2=con.createStatement();
	ResultSet rs2=null;
	ResultSet rs=st.executeQuery("select * from drequest where status='Requested'");%>
	<div class="container">
	<div class="h3 text-center ">Device Request Details</div>
	<div class="table-responsive">
	<table class="table table-bordered">
	<tr><th>Request Id</th><th>Request By</th><th>New Device IP</th><th>Old device IP</th><th>Accept</th></tr>
	<% while(rs.next())
	{
		rs2=st2.executeQuery("select * from users where userId='"+rs.getInt("userId")+"'");
		if(rs2.next())
		{  String url="daccept1.jsp?userId="+rs.getInt("userId")+"&nip="+rs.getString("ip");
			%>
			<tr><td><%=rs.getInt("drequestId")%></td><td><%=rs2.getString("name")%></td><td><%=rs.getString("ip")%></td><td><%=rs2.getString("ip")%></td>
			<td><a class="btn btn-primary btn-block" href="<%=url %>">Accept</a></td></tr>
		<%}
	}
	 %>
	 </table>
	 </div>
	 </div>