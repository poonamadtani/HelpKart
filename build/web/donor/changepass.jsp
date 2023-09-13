
<%
    if (session.getAttribute("id") == null) {
        response.sendRedirect("donor_login.jsp");
    }
%>

<!DOCTYPE html>
<html dir="ltr" lang="en">

    <!-- Mirrored from kodesolution.com/demo/wxyz/w/echarity/v2.0/demo/page-contact4.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 20 Feb 2018 10:32:21 GMT -->
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
                                <h3 class="line-bottom mt-0 mb-30">Change Password</h3>
                                <!-- Contact Form -->
                                <form id="contact_form" name="contact_form" class="" action="../changepassdonor" method="post">
                                    <%
                                        if (request.getParameter("error") != null) {
                                            if (request.getParameter("error").equals("1")) {
                                                out.println("<div class='alert alert-success'> Password Changed Successful </div>");
                                            } else {
                                                out.println("<div class='alert alert-danger'>"+ request.getParameter("error") + "</div>");
                                            }
                                        }
                                    %>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Old Password <small>*</small></label>
                                                <input name="opass" class="form-control" type="text" placeholder="Enter Current Password" required="">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>New Password <small>*</small></label>
                                                <input name="npass" class="form-control required email" type="password" placeholder="Enter New Password">
                                            </div>
                                        </div>
                                         <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Confirm New Password <small>*</small></label>
                                                <input name="cpass" class="form-control required email" type="password" placeholder="Confirm New Password">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <input name="form_botcheck" class="form-control" type="hidden" value="" />
                                        <button type="submit" class="btn btn-dark btn-theme-colored btn-flat mr-5" data-loading-text="Please wait...">Submit</button>
                                        <button type="reset" class="btn btn-default btn-flat btn-theme-colored">Reset</button>
                                    </div>
                                   <div class="form-group m-t-30 m-b-0">
                            <div class="col-sm-7"><a href="donorforgotpass.jsp" class="text-muted"><i class="fa fa-lock m-r-5"></i>Forgot your password?</a></div>
                            <div class="col-sm-5 text-right"><a href="donor_regis.jsp" class="text-muted">Create an account</a></div>
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