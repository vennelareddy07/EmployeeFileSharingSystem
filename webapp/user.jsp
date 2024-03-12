<%@ include file="uback.jsp" %>
<br><br><br>



<header>
        <div class="container" id="maincontent" tabindex="-1">
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-text">
                        <h1>
                       Welcome to <%=(String)session.getAttribute("name")%>
						</h1>
                        <hr class="star-light">
                        <span class="skills"></span>
                    </div>
                </div>
            </div>
        </div>
    </header>

<%@ include file="footer.jsp" %>