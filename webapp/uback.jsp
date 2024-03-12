<%@ include file="links.jsp" %> 




<div class="mb4" >
 <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.jsp">
                Employee File Sharing System
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                       <a href="user.jsp">HOME</a>
                    </li>
                    <li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#">FILES
				        <span class="caret"></span></a>
				        <ul class="dropdown-menu">
				           <li><a href="aupload.jsp" >FILE UPLOAD</a></li>
         					<li><a href="udownload.jsp" >FILE DOWNLOAD</a></li> 
         					<li><a href="myfile.jsp" >MY FILES</a></li>
         			         <li><a href="sharewithme.jsp" >SHARE WITH ME</a></li>
         			
				        </ul>
				     </li>
                    
                    <li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#">REQUESTS
				        <span class="caret"></span></a>
				        <ul class="dropdown-menu">
				         <li><a href="trequst.jsp" >REQUEST STATUS</a></li>
         					<li><a href="view1.jsp" >VIEW REQUEST</a></li> 
				        </ul>
				     </li>
                    
                    <li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#">MY ACCOUNT
				        <span class="caret"></span></a>
				        <ul class="dropdown-menu">
				           <li><a href="updateprof.jsp" >UPDATE PROFILE</a></li>
         			<li><a href="userchangepass.jsp" >CHANGE PASSWORD</a></li>
				           <li ><a href="ulog.jsp"  > LOGOUT</a></li>
				        </ul>
				     </li>
                   
                   
                   
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

</div>












