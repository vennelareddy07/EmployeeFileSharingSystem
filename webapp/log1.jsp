<%@page import="java.sql.*,databaseconnection.*" %>
<%@page import="java.util.Random,action.*"%>

<% 
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

String role=request.getParameter("role");
String skey=request.getParameter("skey");
String url=null;
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
if(role.equalsIgnoreCase("user"))
{
	
	pass = AES1.encrypt(pass, "password123");
	
     String ip=request.getRemoteAddr();
	
	Statement st2=con.createStatement();
	ResultSet rs2=null;
	Statement st3=con.createStatement();
	ResultSet rs3=null;


   ResultSet rs=st.executeQuery("select * from users where pass='"+pass+"' and (email='"+uname+"' or empid='"+uname+"')") ;

   if(rs.next())
   {  

	  rs3=st3.executeQuery("select * from users where status=1 and pass='"+pass+"' and (email='"+uname+"' or empid='"+uname+"')") ;

	   
	   if(rs3.next())
	   {
	   
			   if(ip.equals(rs.getString("ip")))
		  		 {  
				   
				   session.setAttribute("name", rs.getString("name"));
				   
			   session.setAttribute("uname",  rs.getString("email"));
			    url="user.jsp";
				response.sendRedirect(url);
		   }else{
		             rs2=st2.executeQuery("select * from drequest where userId='"+rs.getInt("userId")+"' and status='Requested'");
		             if(rs2.next())
		             {
		            	 url="message.jsp?msg=Your Device Request is in Pending&role=main&color=red";
		         		response.sendRedirect(url);
		             }else{
			   url="drequest.jsp?msg=You are not Accessing from Authorized. Device Please Send Request to Thrustee If you want Access&userId="+rs.getString("userId")+"&ip="+ip;
				response.sendRedirect(url);
		             }
   				}
   
	   }
	   else{
		   url="message.jsp?msg=you are not authorized and wait for the admin approval &role=main&color=red";
			response.sendRedirect(url);
	   }
   }
   
   
   else
   {
	   url="message.jsp?msg=Invalid Login Details&role=main&color=red";
		response.sendRedirect(url);
   }
}else if(role.equalsIgnoreCase("trustee")){
	if(uname.equalsIgnoreCase("trustee") && pass.equalsIgnoreCase("trustee"))
	{
		url="trustee.jsp";
		response.sendRedirect(url);
	}else{
		url="message.jsp?msg=Invalid Login Details&role=main&color=red";
		response.sendRedirect(url);
	}
}
else if(role.equalsIgnoreCase("authority")){
	if(uname.equalsIgnoreCase("authority") && pass.equalsIgnoreCase("authority"))
	{
		url="authority.jsp";
		response.sendRedirect(url);
	}else{
		url="message.jsp?msg=Invalid Login Details&role=main&color=red";
		response.sendRedirect(url);
	}
}
else if(role.equalsIgnoreCase("cloud")){
	
	 ResultSet rs=st.executeQuery("select * from admintbl where password='"+pass+"' and username='"+uname+"' and skey='"+skey+"'") ;

	   if(rs.next())
	    
	{
		url="cloud.jsp";
		response.sendRedirect(url);
	}else{
		url="message.jsp?msg=Invalid Login Details&role=main&color=red";
		response.sendRedirect(url);
	}
}
%>