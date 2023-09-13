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
                                <h3 class="line-bottom mt-0 mb-30">Feedback Details</h3>
                                <!-- Contact Form -->
                                <form id="contact_form" name="contact_form" class="" action="../donorfeed" method="post">
                                    <%
                                    if (request.getParameter("error") != null) {
                                                            if (request.getParameter("error").equals("1")) {
                                                                out.println("<div class='alert alert-success'> Feedback Added Successfully </div>");
                                                            } else {
                                                                out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                            }
                                                        }
                                    %>
                                    <div class="row">
                                         
                                                     <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>
                                                        NGO Id</label>
                                                    <select  class="form-control" name="ngo_id" required>
                                                        <option>Select NGO</option>
                                                        <%
                                                            ResultSet rsngo = DataManager.getData("select * from ngo_master");
                                                            while(rsngo.next())
                                                            {
                                                                out.println("<option value='" + rsngo.getString(1) + "'>" + rsngo.getString(4) + "</option>");
                                                            }
                                                            %>
                                                    </select>
                                            </div>
                                        </div>
                                              <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Date<small>*</small></label>
                                                <input name="feed_date" class="form-control" type="date" placeholder="Enter Date" required="">
                                            </div>
                                        </div>
                                         <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Description <small>*</small></label>
                                                <textarea name="feed_desc" class="form-control" required="" type="text" placeholder="Enter Description" rows="5">
                                                </textarea>
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

    <!-- Mirrored from kodesolution.com/demo/wxyz/w/echarity/v2.0/demo/page-contact4.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 20 Feb 2018 10:32:22 GMT -->
</html>