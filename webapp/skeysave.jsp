<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 





String username=request.getParameter("username");
String oldskey=request.getParameter("oldskey");
String newskey=request.getParameter("newskey");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/twofactor", "root", "root");
	PreparedStatement ps = con.prepareStatement("update admintbl set skey=? where username=? and skey=?");

	
	
	
	
	
	ps.setString(1, newskey);
	ps.setString(2, username);
	ps.setString(3,oldskey);
	
	
	

	int n = ps.executeUpdate();
	response.sendRedirect("clog.jsp");
	ps.close();
	con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}







%>

</body>
</html>