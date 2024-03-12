<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="uback.jsp" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String uname=(String)session.getAttribute("uname");
String fileId=request.getParameter("fid");




String fname=request.getParameter("fname");
String shareto=request.getParameter("email");
String tkey=null;
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from files where fname='"+fname+"'");
while(rs.next())
{
	tkey=rs.getString("tkey");
	
}
st.executeUpdate("insert into share(fileId,fname,shareto,shareby,dateofshare,tkey) values('"+fileId+"','"+fname+"','"+shareto+"','"+uname+"',now(),'"+tkey+"')");
System.out.println("file shared sucessfully");

	String url="message.jsp?msg=file shared sucessfully&role=Authority&color=green";
	response.sendRedirect(url);

con.close();
%>
</body>
</html>