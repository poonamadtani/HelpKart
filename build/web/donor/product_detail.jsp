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

                <%                    ResultSet resultSet = DataManager.getData("Select * from product_detail P INNER JOIN product_cat C ON (p.cat_id=C.cat_id) INNER JOIN unit U ON (P.unit_id=U.unit_id) where product_id=" + request.getParameter("pid"));
                    resultSet.next();
                %>

                <section>
                    <div class="container">
                        <div class="section-content">
                            <div class="row">
                                <div class="product">
                                    <div class="col-md-5">
                                        <div class="product-image">
                                            <div class="zoom-gallery">
                                                <img src="../productphotos/<%= resultSet.getString(7)%>" style="height: 280px;width: 285px;" alt=""></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="product-summary">
                                            <h2 class="product-title"><%= resultSet.getString(3)%></h2>

                                            <div class="price"><span class="amount">Rs.<%= resultSet.getString(4)%>/ <%= resultSet.getString(14)%> </span> </div>
                                            <div class="short-description">
                                                <p><%= resultSet.getString(6)%></p>
                                            </div>
                                            <div class="category"><strong>Category:</strong> <%= resultSet.getString(10)%>
                                                <div class="cart-form-wrapper mt-30">
                                                    <form method="post" class="cart" action="../addcart">
                                                        <input type="hidden" value="<%= resultSet.getString(1)%>" name="product_id">
                                                        <input type="hidden" value="<%= resultSet.getString(4) %>" name="price">
                                                        <input type="hidden" value="<%= resultSet.getString(8) %>" name="unit_id">
                                                        <table class="table variations no-border">
                                                            <tbody>

                                                                <tr>
                                                                    <td class="name">Quantity</td>
                                                                    <td class="value">
                                                                        <div class="quantity buttons_added">
                                                                            <input type="button" class="minus" value="-">
                                                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                                                            <input type="button" class="plus" value="+">
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <button class="single_add_to_cart_button btn btn-theme-colored" type="submit">Add to cart</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-12 mt-30">
                                        <h3 class="line-bottom">Related Products</h3>
                                        <div class="row multi-row-clearfix">
                                            <div class="products related">
                                                <%
                                                    ResultSet resultSet1 = DataManager.getData("Select * from product_detail where cat_id=" + resultSet.getString(2) + " and product_id <> " + request.getParameter("pid"));
                                                    while (resultSet1.next()) {
                                                %>
                                                <div class="col-sm-6 col-md-3 col-lg-3 mb-30">

                                                    <div class="product">
                                                        <span class="tag-sale">Sale!</span>
                                                        <div class="product-thumb"> 
                                                            <img alt="" src="../productphotos/<%= resultSet1.getString(7)%>" style="height: 280px;width: 285px;"  class="img-responsive img-fullwidth">
                                                            <div class="overlay">
                                                                <div class="btn-add-to-cart-wrapper">
                                                                    <a class="btn btn-theme-colored btn-sm pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">Add To Cart</a>
                                                                </div>
                                                                <div class="btn-product-view-details">
                                                                    <a class="btn btn-default btn-theme-colored btn-sm pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="product_detail.jsp?pid=<%= resultSet1.getString(1) %>" >View detail</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="product-details text-center">
                                                            <a href="#"><h5 class="product-title"><%= resultSet1.getString(3)%></h5></a>

                                                            <div class="price"><ins><span class="amount">Rs.<%= resultSet1.getString(4)%> </span></ins></div>
                                                        </div>

                                                    </div>

                                                </div>
                                                <% }
                                                %>
                                            </div>
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