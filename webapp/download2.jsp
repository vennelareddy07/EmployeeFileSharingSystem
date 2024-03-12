<%@ include file="uback.jsp" %> 
<% 
int fileId=Integer.parseInt(request.getParameter("fileId"));

%>

<div class="container-fluid">
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Download File</div>
 
 
 
 
 
 
  <form action="download1.jsp" >
<input type="hidden" name=fileId value="<%=fileId%>">
  
  <div class="form-group">
    <label class="label-control">Enter owner Secert key</label>
    <input type="text" name="akey" class="form-control" required>
  </div>
  <div class="form-group">
    <label class="label-control">Enter Admin Secert key</label>
    <input type="text" name="tkey" class="form-control" required>
  </div>
  <input type="submit" class="btn btn-primary btn-block" value="Download">
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>

