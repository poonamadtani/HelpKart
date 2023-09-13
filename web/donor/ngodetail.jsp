<%@page import="java.sql.ResultSet"%>
<%@page import="mysrc.DataManager"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
    <%@include file="mytheme/headerscripts.jsp" %>
    <body class="">
        <div id="wrapper" class="clearfix">
            <!-- preloader -->
            
            <!-- Header -->
            <%@include file="mytheme/header.jsp" %>
            <!-- Start main-content -->
            <div class="main-content">
                <!-- Section: inner-header -->
                <section class="bg-theme-colored">
                    <div class="container pt-10 pb-10">
                        <div class="row text-center">
                            <div class="col-md-12">
                                <h2 id="basic-coupon-clock" class="text-white"></h2>
                                <!-- Final Countdown Timer Script -->
                                <h2 class="text-white">    NGO Details       </h2>
                            </div>
                        </div>
                    </div>
                </section>

                <section>
                    <div class="container">
                        <div class="row">
                            <% 
                                ResultSet rs = DataManager.getData("Select * from ngo_master where ngo_id=" + request.getParameter("ngoid"));
                                if (rs.next())
                            %>
                            <div class="col-md-4">
                                <ul>

                                    <li>
                                        <h5>NGO Name</h5>
                                        <p><%= rs.getString(4) %></p>
                                    </li>
                                    <li>
                                        <h5>Address</h5>
                                        <p><%= rs.getString(5)%></p>
                                    </li>
                                    <li>
                                        <h5>City</h5>
                                        <p><%= rs.getString(7)%></p>
                                    </li>
                                    <li>
                                        <h5>Phone No</h5>
                                        <p><%= rs.getString(6)%></p>
                                    </li>
                                    <li>
                                        <h5>Email Id</h5>
                                        <p><%= rs.getString(2)%></p>
                                    </li>

                                </ul>
                            </div>
                            <div class="col-md-8">
                                <div class="owl-carousel-1col" data-nav="true">
                                    <%
                                        ResultSet rs1 = DataManager.getData("Select * from ngo_photo where ngo_id=" + request.getParameter("ngoid"));
                                        while (rs1.next()) {


                                    %>

                                    <div class="item">
                                        <img src="../ngophotos/<%= rs1.getString(2)%>" style="width:755px; height:480px;" />
                                    </div>
                                    <% }
                                    %>
                                </div>
                            </div>

                        </div>
                        <div class="row mt-60">
                            <div class="col-md-6">
                                <h4 class="mt-0">NGO Description</h4>
                                <p><%= rs.getString(8)%></p>
                            </div>

                        </div>
                        <div class="row mt-40">
                            <div class="col-md-12">
                                <h4 class="mb-20">Required Products</h4>
                                <div class="row">
                                    <div class="col-md-10 col-md-offset-1">
                                        <div class="row multi-row-clearfix">
                                            <div class="products">

                                                <%
                                                    ResultSet resultSet1 = DataManager.getData("Select * from ngo_req R INNER JOIN product_detail P ON (R.product_id=P.product_id) where ngo_id=" + rs.getString(1));
                                                    while (resultSet1.next()) { 
                                                %>
                                                <div class="col-sm-6 col-md-4 col-lg-4 mb-30">
                                                    <div class="product">
                                                        <span class="tag-sale">Sale!</span>
                                                        <div class="product-thumb"> 
                                                            
                                                            <img alt="" style="height: 320px;width: 285px;" src="../productphotos/<%= resultSet1.getString(11)%>" class="img-responsive img-fullwidth">
                                                            <div class="overlay">
                                                                <div class="btn-add-to-cart-wrapper">
                                                                    <a class="btn btn-theme-colored btn-sm pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="#">Add To Cart</a>
                                                                </div>
                                                                <div class="btn-product-view-details">
                                                                    <a class="btn btn-default btn-theme-colored btn-sm pl-20 pr-20 btn-add-to-cart text-uppercase font-weight-700" href="product_detail.jsp?pid=<%= resultSet1.getString(4) %>">View detail</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="product-details text-center">
                                                            <a href="#"><h5 class="product-title"><%= resultSet1.getString(7) %></h5></a>

                                                            <div class="price"><ins><span class="amount">Rs.<%= resultSet1.getString(8) %></span></ins></div>
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
              <div class="comments-area">
                <h5 class="comments-title">Feedback</h5>
                <ul class="comment-list">
                    <%
                        
                         ResultSet rsfeed = DataManager.getData("SELECT F.feedback_id,F.date,F.description,M.ngo_name,D.donor_Name FROM feedback F INNER JOIN ngo_master M ON (F.`ngo_id`=M.`ngo_id`) INNER JOIN donor_master D ON (F.`donor_id`=D.`donor_id`) where F.ngo_id="+ request.getParameter("ngoid"));
                         
                         while (rsfeed.next()) { 
                    
                    %>
                  <li>
                    <div class="media comment-author"> <a class="media-left" href="#"></a>
                      <div class="media-body">
                          <h5 class="media-heading comment-heading"><%= rsfeed.getString(5) %></h5>
                          <div class="comment-date"><%= rsfeed.getString(2) %></div>
                        <p><%= rsfeed.getString(3) %></p>
                    </div>
                  </li>
                  
                  <% }
                  %>
                </ul>
              </div>
                <div class="comment-box">
                <div class="row">
                  <div class="col-sm-12">
                    <h5>Leave a Feedback</h5>
                    <div class="row">
                        <form action="../donorfeed" role="form" id="comment-form">
                            <input type="hidden" name="ngo_id" value="<%= request.getParameter("ngoid") %>">
                        <div class="col-sm-6">
                          <div class="form-group">
                            <textarea class="form-control" required name="feeddesc" id="contact_message2"  placeholder="Enter Feedback" rows="7"></textarea>
                          </div>
                          <div class="form-group">
                            <button type="submit" class="btn btn-dark btn-flat pull-right m-0" data-loading-text="Please wait...">Submit</button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
                    </div>
            </div>
        </section>

        <!-- Section: Registration Form -->




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