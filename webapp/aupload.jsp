<%@include file="uback.jsp" %>

<div class="container-fluid">
<br><br><br><br>
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
  <div class="well">
  <div class="text-center h3 text-uppercase">Upload File </div>
  <form action="aupload1.jsp" method="post" ENCTYPE="multipart/form-data">
  
  	  <div class="form-group">
    <label class="label-control">Select File</label>
    <input type="file" name="myfile" class="form-control" required>
  </div>
 
 <div class="form-group">
    <label class="label-control">Select Expiry Date</label>
    <input type="text" name="expdate" id="expdate" class="form-control" required>
  </div>
  
  <input type="submit" class="btn btn-primary btn-block" value="Upload">
  </form>
  </div>
  </div>
  <div class="col-md-4"></div>
</div>
</div>

<%@ include file="footer.jsp" %>