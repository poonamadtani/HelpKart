<%@page import="mysrc.DataManager"%>
<%@page import="java.sql.ResultSet"%>
<header id="header" class="header">
    <div class="header-top bg-theme-colored sm-text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <div class="widget no-border m-0">
                        <ul class="styled-icons icon-dark icon-theme-colored icon-sm sm-text-center">
                            <li><a href="https://www.facebook.com/poonam.adtani"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://twitter.com/padtani"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://plus.google.com/117407049386698270039"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="https://in.linkedin.com/in/poonam-adtani-58b82a12b"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="widget no-border m-0">
                        <ul class="list-inline pull-right flip sm-pull-none sm-text-center mt-5">
                            <li class="m-0 pl-10 pr-10"> <i class="fa fa-phone text-white"></i> <a class="text-white" href="#">079-45478569</a> </li>
                            <li class="text-white m-0 pl-10 pr-10"> <i class="fa fa-clock-o text-white"></i> Mon-Fri 8:00 to 2:00 </li>
                            <li class="m-0 pl-10 pr-10"> <i class="fa fa-envelope-o text-white"></i> <a class="text-white" href="#">info@rexontechnologies.com</a> </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="widget no-border m-0">
                        <ul class="list-inline pull-right flip sm-pull-none sm-text-center mt-5">

                            <%
                                if (session.getAttribute("id") == null) {%>
                            <li class="mt-sm-10 mb-sm-10">
                                <!-- Modal: Appointment Starts -->
                                <a class="btn btn-default btn-flat btn-xs bg-light p-5 font-11 pl-10 pr-10" href="donor_login.jsp">Donate Now</a>
                            </li>
                            <li class="mt-sm-10 mb-sm-10">
                                <a class="btn btn-default btn-flat btn-xs bg-light p-5 font-11 pl-10 pr-10" href="donor_regis.jsp">Join Us</a>
                            </li>        
                            <%} else {%>
                            <a class="btn btn-default btn-flat btn-xs bg-light p-5 font-11 pl-10 pr-10" href="#">WelCome, <%= session.getAttribute("name")%> </a>
                            <%}
                            %>


                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-nav">
        <div class="header-nav-wrapper navbar-scrolltofixed bg-white">
            <div class="container">
                <nav id="menuzord-right" class="menuzord green no-bg"><a class="menuzord-brand pull-left flip xs-pull-center mb-15" href="index-mp-layout1.html"><img src="../logo/logo-wide.jpg" style="height: 180px; width:200px" alt=""></a>
                    <ul class="menuzord-menu">
                        <li><a href="home.jsp">Home</a>

                        </li>
                        <li><a href="#">Category</a>
                            <ul class="dropdown">
                                <%
                                    ResultSet rscategory = DataManager.getData("Select * from product_cat");
                                    while (rscategory.next()) {%>
                                <li><a href="product_cat.jsp?catid=<%= rscategory.getString(1)%>"><%= rscategory.getString(2)%></a></li>
                                    <%}
                                    %>
                            </ul>
                        </li>
                        <li><a href="ngolist.jsp">NGO List</a></li>
                        <li><a href="aboutus.jsp">About Us</a></li>
                        <li><a href="contactus.jsp">Contact Us</a>
                            
                        </li>
                         <li><a href="view-order_1.jsp">View Order History</a></li>
                         <li><a href="#">My Profile</a>
                            <ul class="dropdown">
                                
                                 <li><a href="changepass.jsp">Change Password</a></li>
                                  <li><a href="logout.jsp">Logout</a></li>
                                   
                            </ul>
                        </li>
                        
                    
                       
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>