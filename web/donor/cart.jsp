<%@page import="java.sql.ResultSet"%>
<%@page import="mysrc.DataManager"%>
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
                                <h3 class="line-bottom mt-0 mb-30">Cart Details</h3>
                                <!-- Contact Form -->
                                <form id="contact_form" name="contact_form" class="" action="../addcart" method="post">
                                    <%                                        if (request.getParameter("error") != null) {
                                            if (request.getParameter("error").equals("1")) {
                                                out.println("<div class='alert alert-success'> Cart Added Successfully </div>");
                                            } else {
                                                out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                            }
                                        }
                                    %>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Product Id<small>*</small></label>
                                                <select name="product_id" class="form-control" required="">
                                                    <option>
                                                        Select Product
                                                    </option>
                                                    <%
                                                        ResultSet rspro = DataManager.getData("select * from product_detail");
                                                        while (rspro.next()) {
                                                            out.println("<option value='" + rspro.getString(1) + "'>" + rspro.getString(3) + "</option>");
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Unit Id<small>*</small></label>
                                                <select name="unit_id" class="form-control" required="">
                                                    <option>
                                                        Select Unit
                                                    </option>
                                                    <%
                                                        ResultSet rsuni = DataManager.getData("select * from unit");
                                                        while (rsuni.next()) {
                                                            out.println("<option value='" + rsuni.getString(1) + "'>" + rsuni.getString(2) + "</option>");
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Donor Id<small>*</small></label>
                                                <select name="donor_id" class="form-control" required="">
                                                    <option>
                                                        Select Donor
                                                    </option>
                                                    <%
                                                        ResultSet rsdon = DataManager.getData("select * from donor_master");
                                                        while (rsdon.next()) {
                                                            out.println("<option value='" + rsdon.getString(1) + "'>" + rsdon.getString(4) + "</option>");
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>Price<small>*</small></label>
                                                <input name="price" class="form-control" type="text" placeholder="Enter Price" required="">
                                            </div>
                                            <div class="form-group">
                                                <label>Quantity<small>*</small></label>
                                                <input name="qty" class="form-control" type="text" placeholder="Enter Quantity" required="">
                                            </div>
                                        </div>


                                    </div>


                                    <div class="form-group">

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



