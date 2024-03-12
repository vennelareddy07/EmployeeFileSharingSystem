<%@include file="mback.jsp" %>
<% 
String msg=request.getParameter("msg");
String ip=request.getParameter("ip");
int userId=Integer.parseInt(request.getParameter("userId"));
String url="drequest2.jsp?ip="+ip+"&userId="+userId;
%>
<div class="container">
<div class="well h2 text-center text-info"><%=msg%></div>
<br><br>
<div class="col-md-4"></div>
<div class="col-md-4">
<a href="<%=url%>" class="btn btn-warning btn-block">Send Request</a>
</div>
<div class="col-md-4"></div>
</div>