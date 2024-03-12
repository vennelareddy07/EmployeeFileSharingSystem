
<% String msg=request.getParameter("msg");

String role=request.getParameter("role");
String color=request.getParameter("color");
if(role.equalsIgnoreCase("main"))
{ %>
	<%@include file="mback.jsp" %>
 <%}else if(role.equalsIgnoreCase("user")){
	 %>
		<%@include file="uback.jsp" %>
	 <% 
 }else if(role.equalsIgnoreCase("trustee")){
	 %>
		<%@include file="tback.jsp" %>
	 <% 
 }
 else if(role.equalsIgnoreCase("authority")){
	 %>
		<%@include file="uback.jsp" %>
	 <% 
 }else if(role.equalsIgnoreCase("cloud")){
	 %>
		<%@include file="cback.jsp" %>
	 <% 
 }

%>
<div class="container">
<br><br><br>

<div class="well text-center h3" style="color:<%=color%>"><%=msg%></div>
</div>
