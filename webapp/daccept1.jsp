<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*" %>
<% 
String nip=request.getParameter("nip");
String userId=request.getParameter("userId");

String url=null;
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
int i=st.executeUpdate("update users set ip='"+nip+"' where userId='"+userId+"'");
if(i>0)
{
	st2.executeUpdate("update drequest set status='Accepted' where userId='"+userId+"'");
	url="message.jsp?msg=New Device Access Perimitted Successfully&role=Trustee&color=green";
	response.sendRedirect(url);
}else{
	url="message.jsp?msg=Fails to Assign New Device&role=Trustee&color=red";
	response.sendRedirect(url);
}
%>