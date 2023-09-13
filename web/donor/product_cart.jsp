
<%
    if (request.getParameter("did") != null) {
        String did = request.getParameter("did");
        String rows = DataManager.setData("delete from cart where cart_id='" + did + "'");
        response.sendRedirect("product_cart.jsp?error=" + rows);
    }
%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mysrc.DataManager"%>
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
                <!-- Section: inner-header -->


                <section>
                    <div class="container">
                        <div class="section-content">
                            <div class="row">
                                <div class="col-md-10 col-md-offset-1">
                                    <form action="../updatecart">
                                        <table class="table table-striped table-bordered tbl-shopping-cart">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th>Photo</th>
                                                    <th>Product Name</th>
                                                    <th>Price</th>
                                                    <th>Quantity</th>
                                                    <th>Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%                        ResultSet rs = DataManager.getData("Select P.product_image,P.product_name,C.price,C.qty,C.cart_id,P.product_id from cart C INNER JOIN product_detail P on (C.product_id=P.product_id) where C.donor_id=" + session.getAttribute("id"));
                                                    int grandtotal = 0;
                                                    int i = 0;
                                                    while (rs.next()) {
                                                %>
                                                <tr class="cart_item">
                                                    <td class="product-remove"><a title="Remove this item" class="remove" href="?did=<%= rs.getString(5)%>">×</a></td>
                                                    <td class="product-thumbnail"><a href="#"><img alt="member" src="../productphotos/<%= rs.getString(1)%>"></a></td>
                                                    <td class="product-name"><a class="text-theme-colored" href="#"><%= rs.getString(2)%></a>
                                                        <ul class="variation">
                                                            <li class="variation-size">Color: <span>Black</span></li>
                                                        </ul></td>
                                                    <td class="product-price"><span class="amount">Rs.<%= rs.getString(3)%></span></td>

                                                    <% int price = Integer.parseInt(rs.getString(3));
                                                        int qty = Integer.parseInt(rs.getString(4));
                                                        int total = price * qty;

                                                        grandtotal = grandtotal + total;
                                                    %>
                                                    <td class="product-quantity">
                                                        <div class="quantity buttons_added">

                                                            <input type="button" class="minus" value="-">
                                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="<%= rs.getString(4)%>" name="quantity<%= i%>" min="1" step="1">
                                                            <input type="button" class="plus" value="+">
                                                        </div>
                                                    </td> 
                                                    <td class="product-subtotal"><span class="amount">Rs.<%= total%></span></td>
                                                </tr>
                                            <input type="hidden" name="cart<%= i++%>" value="<%= rs.getString(5)%>"/>
                                            <% }
                                            %>
                                            <tr class="cart_item">
                                            <input type="hidden" name="i" value="<%= i %>"/>
                                            <td><button type="submit" class="btn">Update Cart</button>
                                            </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                                <div class="col-md-10 col-md-offset-1 mt-30">
                                    <div class="row">

                                        <div class="col-md-6">
                                            <h4>Cart Totals</h4>
                                            <table class="table table-bordered">
                                                <tbody>
                                                    <tr>
                                                        <td>Cart Subtotal</td>
                                                        <td>Rs.<%= grandtotal%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Shipping and Handling</td>
                                                        <td>Free</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Order Total</td>
                                                        <td>Rs.<%= grandtotal%></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <a class="btn btn-default" href="checkout.jsp">Proceed to Checkout</a> </div>
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