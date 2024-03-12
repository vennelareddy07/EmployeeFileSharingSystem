<%@ include file="cback.jsp" %> 
<%@page import="java.sql.*,databaseconnection.*" %>

<% 

Connection con=DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from noti where task='UPLOADED'");%>
<div class="container">
<br><br><br>
<div class="h3 text-center">Cloud Uploads</div>
<div class="table-responsive">
<table class="table table-bordered">





<tr><th>SNO</th><th>File Name</th><th>Date</th><th>Uploaded by</th><th>Expire Date</th></tr>
<%
int i=1;
while(rs.next())
{%>
	<tr><td><%= i++%></td><td><%=rs.getString("fname")%></td><td><%=rs.getString("tdate")%></td><td><%=rs.getString("uploadedby") %></td><td><%=rs.getString("expiredate") %></td></tr>
<%}

%>
</table>
</div>
</div>
<%@ include file="footer.jsp" %>