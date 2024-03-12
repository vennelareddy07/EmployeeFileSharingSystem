

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>






<%
 







String userid=request.getParameter("userId");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/twofactor", "root", "root");
	PreparedStatement ps = con.prepareStatement("update users set status=1 where userId=?");	
	ps.setString(1, userid);
	
	int n=ps.executeUpdate();
	

	//out.println("sucess");
    response.sendRedirect("viewusers.jsp");
	ps.close();
	con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}







%>