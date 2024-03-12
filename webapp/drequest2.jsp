<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*" %>
<% 
String ip=request.getParameter("ip");
String userId=request.getParameter("userId");

String url=null;
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
int a=st.executeUpdate("insert into drequest(userId,ip,status) values('"+userId+"','"+ip+"','Requested')");
if(a>0)
{
	  url="message.jsp?msg=Request Sent For New Device Sent Successfully&role=main&color=green";
		response.sendRedirect(url);
	 
}
else
{
	  url="message.jsp?msg=Fails to Send Request&role=main&color=red";
		response.sendRedirect(url);
}
%>