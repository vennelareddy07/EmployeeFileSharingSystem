<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*,action.*"%>

<%
String email = request.getParameter("email");

Connection con=DBCon.getConnection();
Statement st=con.createStatement();
String url="";
ResultSet rs=st.executeQuery("select * from users where email='"+email+"'");
if(rs.next()){
	String password=rs.getString(4);
	if(Email.sendMail("Password Recovery", "Your Password is "+AES1.decrypt(password,"password123"), email, email))
	{
	url="message.jsp?msg=Password Sent to email successfully &role=main&color=green";
	}
	else{
		url="message.jsp?msg=Error in sending email  &role=main&color=red";

	}
	 response.sendRedirect(url);

}
else{
	 url="message.jsp?msg=Email Not Exists &role=main&color=red";
	 response.sendRedirect(url);
}


%>
