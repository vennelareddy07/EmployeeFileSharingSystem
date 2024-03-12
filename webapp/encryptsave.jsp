<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*,action.*"%>
<%@ include file="cback.jsp" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 

String name=request.getParameter("name");




String mobile=request.getParameter("mobile");
String address=request.getParameter("address");
Connection con=DBCon.getConnection();
Statement st=con.createStatement();

name = AES.encrypt(name, "1a1s");
mobile = AES.encrypt(mobile, "1a1s");
address = AES.encrypt(address, "1a1s");




st.executeUpdate("insert into encdec(name,mobile,address)values('"+name+"','"+mobile+"','"+address+"')");
System.out.println("file encrypt sucessfully");

con.close();
%>
</body>
</html>