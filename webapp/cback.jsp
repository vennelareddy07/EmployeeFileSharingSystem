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
                       <a href="cloud.jsp">HOME</a>
                    </li>
                    <li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#">TRANSECTIONS
				        <span class="caret"></span></a>
				        <ul class="dropdown-menu">
				          <li><a href="cuplodnote.jsp" >CLOUD UPLOADS</a></li>
				          <li><a href="cdownnote.jsp" >CLOUD DOWNLOADS</a></li>
				        </ul>
				     </li>
                    
                    <li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#">USERS
				        <span class="caret"></span></a>
				        <ul class="dropdown-menu">
				          <li><a href="viewusers.jsp" >MANAGE USERS</a></li>
				          <li><a href="tresponse.jsp" >FILE SECURITY RESPONSE</a></li>
				        </ul>
				     </li>
                    
                    <li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#">MY ACCOUNT
				        <span class="caret"></span></a>
				        <ul class="dropdown-menu">
				          <li> <a href="changepassword.jsp" >CHANGE PASSWORD</a></li>
				          <li><a href="skey.jsp" >CHANGE SECERTKEY</a></li>
				           <li ><a href="clog.jsp"  > LOGOUT</a></li>
				        </ul>
				     </li>
                   
                   
                   
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

</div>






