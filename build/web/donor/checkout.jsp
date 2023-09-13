<%@page import="java.sql.ResultSet"%>
<%@page import="mysrc.DataManager"%>
<%@page import="mysrc.DataManager"%>
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
                <!-- Section: inner-header -->


                <section>
                    <div class="container">
                        <div class="section-content">
                            <div class="row mt-30">
                                <form id="checkout-form" action="../placeorder">
                                    <h3 class="mb-30">Billing Details</h3>
                                    <div class="col-md-6">
                                        <div class="billing-details">
                                            <div class="row">
                                                <%                          ResultSet rs = DataManager.getData("Select * from donor_master where donor_id=1");
                                                    if (rs.next())
                                                %>
                                                <div class="form-group">
                                                    <label for="checkuot-form-fname" style="color: #000">Donor Name</label>
                                                </div>


                                                <div class="form-group">
                                                    <label for="checkuot-form-cname" ><%= rs.getString(4) %></label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="checkuot-form-email" style="color: #000">Gender</label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="checkuot-form-address" ><%= rs.getString(6)%></label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="checkuot-form-address" style="color: #000">Age</label>
                                                </div>

                                                <div class="form-group">
                                                    <label for="checkuot-form-city" ><%= rs.getString(5)%></label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="checkuot-form-address" style="color: #000">NGO Id</label>
                                                    <select  class="form-control" name="ngo_id" required>
                                                        <option>Select NGO</option>
                                                        <%
                                                            ResultSet rsngo = DataManager.getData("select * from ngo_master");
                                                            while (rsngo.next()) {
                                                                out.println("<option value='" + rsngo.getString(1) + "'>" + rsngo.getString(4) + "</option>");
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="billing-details">

                                            <div class="row">
                                                <div class="form-group">
                                                    <label for="checkuot-form-fname" style="color: #000">City</label>
                                                </div>


                                                <div class="form-group">
                                                    <label for="checkuot-form-cname" ><%= rs.getString(8)%></label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="checkuot-form-email" style="color: #000">Phone No</label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="checkuot-form-address" ><%= rs.getString(7)%></label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="checkuot-form-address" style="color: #000">Email Id</label>
                                                </div>

                                                <div class="form-group">
                                                    <label for="checkuot-form-city" ><%= rs.getString(2)%></label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <h3>Payment Information</h3>
                                        <div class="payment-method">
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" value="option1" checked>
                                                    Cash On Delivery</label>
                                                <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won?t be shipped until the funds have cleared in our account.</p>
                                            </div>
                                           <!-- <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" value="option2" >
                                                    Cheque Payment </label>
                                                <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                            </div> -->

                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="text-right"> <button class="btn btn-default">Place Order</button> </div>
                                    </div>
                                </form>
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