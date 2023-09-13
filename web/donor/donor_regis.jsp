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
                                <h3 class="line-bottom mt-0 mb-30">Sign Up</h3>
                                <!-- Contact Form -->
                                <form id="contact_form" name="contact_form" class="" action="../donorsignup" method="post">
                                    <%
                                        if (request.getParameter("error") != null) {
                                            if (request.getParameter("error").equals("1")) {
                                                out.println("<div class='alert alert-success'> Donor Added Successfully </div>");
                                            } else {
                                                out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                            }
                                        }
                                    %>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Donor Name<small>*</small></label>
                                                <input name="name" class="form-control" type="text" placeholder="Enter Name" required="">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Age<small>*</small></label>
                                                <input name="age" class="form-control" type="number" placeholder="Enter Age" required="">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Gender<small>*</small></label>
                                                <select name="gender" class="form-control" required="">
                                                    <option>Male</option>
                                                    <option>Female</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Email<small>*</small></label>
                                                <input name="email" class="form-control" type="email" placeholder="Enter Email" required="">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Password <small>*</small></label>
                                                <input name="pass" class="form-control" required="" type="password" placeholder="Enter Password">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group"> 
                                                <label>Phone Number <small>*</small></label>
                                                <input name="phoneno" class="form-control" required="" type="number" placeholder="Enter PhoneNo">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>City <small>*</small></label>
                                                <input name="city" class="form-control" required="" type="text" placeholder="Enter City">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Security question <small>*</small></label>
                                                <select name='secque' class="form-control" required="">
                                                    <option>What is your nick name?</option>
                                                    <option>What is your pet's name?</option>
                                                    <option>What is your favorite color?</option>
                                                    <option>What is your favorite dish?</option>
                                                    <option>Who was your first crush?</option>
                                                    <option>what is your dream company?</option>
                                                </select>
                                            </div>

                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Answer<small>*</small></label>
                                                <input name="answer" class="form-control required email" type="text" placeholder="Enter Answer">
                                            </div>
                                        </div>

                                    </div>


                                    <div class="form-group">
                                        <input name="form_botcheck" class="form-control" type="hidden" value="" />
                                        <button type="submit" class="btn btn-dark btn-theme-colored btn-flat mr-5" data-loading-text="Please wait...">Submit</button>
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