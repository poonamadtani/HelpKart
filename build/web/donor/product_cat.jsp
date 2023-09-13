<%@page import="mysrc.DataManager"%>
<%@page import="java.sql.ResultSet"%>
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
                <!-- Section: inner-header -->


                <section class="">
                    <div class="container mt-30 mb-30 p-30">
                        <div class="section-content">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="row multi-row-clearfix">
                                        <div class="products">

                                            <%
                                                ResultSet resultSet = DataManager.getData("Select * from product_detail where cat_id=" + request.getParameter("catid"));
                                                while (resultSet.next()) {%> 
                                            <div class="col-sm-6 col-md-4 col-lg-4 mb-30">
                                                <div class="product">
                                                    <span class="tag-sale">Sale!</span>
                                                    <div class="product-thumb"> 
                                                        <img alt="" style="height: 280px;width: 285px;" src="../productphotos/<%= resultSet.getString(7) %>" class="img-responsive img-fullwidth">
                                                        <div class="overlay">
                                                            <div class="btn-add-to-cart-wrapper">
                                                                <a class="btn btn-theme-colored btn-sm pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">Add To Cart</a>
                                                            </div>
                                                            <div class="btn-product-view-details">
                                                                <a class="btn btn-default btn-theme-colored btn-sm pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="product_detail.jsp?pid=<%= resultSet.getString(1) %>">View detail</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-details text-center">
                                                        <a href="#"><h5 class="product-title"><%= resultSet.getString(3) %></h5></a>
                                                        
                                                        <div class="price"><ins><span class="amount">Rs.<%= resultSet.getString(4) %></span></ins></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}
                                            %>



                                        </div>
                                    </div>
                                </div>
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