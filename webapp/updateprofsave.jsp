<%@ include file="mback.jsp" %> 
<%@page import="java.sql.*,databaseconnection.*" %>


<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String gender=request.getParameter("gender");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String empid=request.getParameter("empid");





String role=request.getParameter("role");
try
{
  Connection con=DBCon.getConnection();
PreparedStatement ps = con.prepareStatement("update users set name=?,gender=?,phone=?,address=?,empid=?,role=? where email=?");


	ps.setString(1, name);
	ps.setString(2, gender);
	
	
	ps.setString(3, phone);
	ps.setString(4, address);
	ps.setString(5, empid);
	ps.setString(6,role);
	ps.setString(7, email);
	int n = ps.executeUpdate();
	response.sendRedirect("updateprof.jsp");
	
	ps.close();
	con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}
%>