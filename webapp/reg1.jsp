<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*" %>
<% 
String name=request.getParameter("name");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String gender=request.getParameter("gender");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String empid=request.getParameter("empid");
String role=request.getParameter("role");
String ip=request.getRemoteAddr();
String url=null;
Connection con=DBCon.getConnection();
Statement st=con.createStatement();




pass = AES1.encrypt(pass, "password123");

int a=st.executeUpdate("insert into users(name,email,pass,gender,phone,address,empid,role,ip) values('"+name+"','"+email+"','"+pass+"','"+gender+"','"+phone+"','"+address+"','"+empid+"','"+role+"','"+ip+"')");
if(a>0)
{
	  url="message.jsp?msg=Registration Success&role=main&color=green";
		response.sendRedirect(url);
	 
}
else
{
	  url="message.jsp?msg=Registration Fails&role=main&color=red";
		response.sendRedirect(url);
}
%>