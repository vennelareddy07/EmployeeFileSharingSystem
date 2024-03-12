<%@page import="java.util.Random"%>
<%@page import="java.sql.*,databaseconnection.*,action.*" %>
<% 
int fileId=Integer.parseInt(request.getParameter("fileId"));
String akey=request.getParameter("akey");

String name=(String)session.getAttribute("name");
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String url=null,ddata;
ResultSet rs=st.executeQuery("select * from files where fileId='"+fileId+"'");
if(rs.next())
{
if(akey.equalsIgnoreCase(rs.getString("tkey"))){
	 
	ddata=AES1.decrypt(rs.getString("fdata").trim(),rs.getString("akey"));
	out.print(ddata);
	
	st2.executeUpdate("insert into noti(fileId,fname,task,tby,tdate,role) values('"+rs.getInt(1)+"','"+rs.getString("fname")+"','DOWNLOADED','"+name+"',now(),'User')");
	response.setContentType("text/html;charset=UTF-8");
	response.setHeader("Content-Disposition", "attachment;filename=\"" + rs.getString("fname") + "\"");
	
	
}	else{
	url="message.jsp?msg=Invalid  File key&color=red&role=User";
	response.sendRedirect(url);
}
}
%>
