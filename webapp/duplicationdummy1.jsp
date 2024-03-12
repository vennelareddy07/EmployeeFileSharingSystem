<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*"%>

<%@page import="java.sql.*,databaseconnection.*" %>
    <%@include file="mback.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String fdata=request.getParameter("fdata");
String fname=request.getParameter("fname");

		  
		    	try 
				{
		    		Connection con=DBCon.getConnection();
		    		Statement st=con.createStatement();
		  		

		    		PreparedStatement ps = con.prepareStatement("select * from files");
		    	
		    						   	
		    		ResultSet rs=ps.executeQuery();
		    		
		  		
		  		
		  		while(rs.next())
			    {
		  			
		  			out.println(rs.getString(3));
		  		
			    }
					
			%>
			

		<% 		
	 
           con.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%> 		
</body>
</html>