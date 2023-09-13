<!DOCTYPE html>
<html dir="ltr" lang="en">
    <%@include file="mytheme/headerscripts.jsp" %>
    <body class="">
        <div id="wrapper" class="clearfix">
            <!-- preloader -->
            <%@include file="mytheme/preloader.jsp" %>
            <!-- Header -->
            <%@include file="mytheme/header.jsp" %>
            <!-- Start main-content -->
            <div class="main-content">
                <!-- Divider: Google Map -->
                <!-- Divider: Contact -->
                <section class="divider">
                    <div class="container">
                        <div class="row pt-30">

                            <div class="col-md-6">
                                <h3 class="line-bottom mt-0 mb-30">Forgot Password</h3>
                                <!-- Contact Form -->
                                <form id="contact_form" name="contact_form" class="" action="../donor_forgot" method="post">
                                    <%
                                        if (request.getParameter("error") != null) {
                                            if (request.getParameter("error").equals("1")) {
                                                out.println("<div class='alert alert-success'> Login Successful </div>");
                                            } else {
                                                out.println("<div class='alert alert-danger'>Invalid Login Details</div>");
                                            }
                                        }
                                    %>
                                     <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                
                                                <input name="email" class="form-control" type="email" placeholder="Enter Email" required="">
                                            </div>
                                        </div>
                                        
                                    </div>
                        

                                    <div class="form-group">
                                        <input name="form_botcheck" class="form-control" type="hidden" value="" />
                                        <button type="submit" class="btn btn-dark btn-theme-colored btn-flat mr-5" data-loading-text="Please wait...">Send Mail</button>
                                        <button type="reset" class="btn btn-default btn-flat btn-theme-colored">Reset</button>
                                    </div>
                                    
                                </form>

                                <!-- Contact Form Validation-->
                                    </div>
                            </div>
                        </div>
                   
                </section>
            </div>
            <!-- end main-content -->
            <!-- Footer -->
            <%@include file="mytheme/footer.jsp" %>
            <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- end wrapper -->
        <!-- Footer Scripts -->
        <!-- JS | Custom script for all pages -->
        <%@include file="mytheme/scripts.jsp" %>
    </body>
</html>