<%@page import="action.Email"%>
<%@page import="databaseconnection.*"%>
<%@page import="java.sql.*"%>
<%@ include file="uback.jsp" %> 
<%
int requestId=Integer.parseInt(request.getParameter("requestId"));
String role=request.getParameter("role");
String msg=null;
	Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	Statement st2=con.createStatement();
	Statement st3=con.createStatement();
	Statement st4=con.createStatement();
	ResultSet rs3=null,rs4=null;
	ResultSet rs=st.executeQuery("select * from request where requestId='"+requestId+"'");
	if(rs.next())
	{rs3=st3.executeQuery("select * from files where fileId='"+rs.getString("fileId")+"'");
	rs4=st4.executeQuery("select * from users where email='"+rs.getString("rby")+"'");
	if(rs3.next())
	{ if(rs4.next())
	{   String url=null;
		if(role.equalsIgnoreCase("admin"))
		{  
			msg="Your admin Respose key for File "+rs.getString("fname")+" is "+rs3.getString("tkey");
			System.out.println(msg);
			Email.sendMail("admin key", msg, rs4.getString("email"), rs4.getString("email"));
			st2.executeUpdate("update request set status='Admin Key Sent' where requestId='"+requestId+"'");
			url="message.jsp?msg=Key Sent Success&role=cloud&color=green";
			response.sendRedirect(url);
		
		}else if(role.equalsIgnoreCase("owner"))
		{
			msg="Your owner Respose key for File "+rs.getString("fname")+" is "+rs3.getString("akey");
			Email.sendMail("Owner key", msg, rs4.getString("email"), rs4.getString("email"));
			st2.executeUpdate("update request set status='Owner Key Sent' where requestId='"+requestId+"'");
			url="message.jsp?msg=Key Sent Success&role=authority&color=green";
			response.sendRedirect(url);
		}
		
	}
	}
	}
%>	