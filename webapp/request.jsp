<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="uback.jsp" %> 
<% 
int fileId=Integer.parseInt(request.getParameter("fileId"));
String role=request.getParameter("role");
String fname=request.getParameter("fname");
String uname=(String)session.getAttribute("uname");
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
















if(role.equalsIgnoreCase("admin"))
{
	st.executeUpdate("insert into request(fileId,fname,rto,rby,datee,status) values('"+fileId+"','"+fname+"','admin','"+uname+"',now(),'requested')");
	String url="message.jsp?msg=Request Sent to admin Successfully&color=green&role=User";
	response.sendRedirect(url);
}else if(role.equalsIgnoreCase("owner")){
	String owner=request.getParameter("owner");

	
	st.executeUpdate("insert into request(fileId,fname,rto,rby,datee,status) values('"+fileId+"','"+fname+"','"+owner+"','"+uname+"',now(),'requested')");
	String url="message.jsp?msg=Request Sent to owner Successfully&color=green&role=User";
	response.sendRedirect(url);
}


%>