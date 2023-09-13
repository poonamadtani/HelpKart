<%@page import="java.sql.ResultSet"%>
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
      
        <div class="row">
          <div class="col-md-12 mt-40">
            <hr>
            <h4 class="title">Order Details</h4>
             
              <div data-example-id="striped-table" class="bs-example">
                  <table class="table table-striped">
                      <thead> 
                          <tr> 
                              <th>Detail Id</th>
                              <th>Order Id</th>
                              <th>Product Id</th>
                              <th>Quantity</th>
                              <th>Price</th>
                          </tr>
                      </thead>
                      <tbody> 
                           <%  ResultSet rs = DataManager.getData("select * from order_detail");
               while (rs.next()) { %>   
                          <tr>
                             
                              <td><%= rs.getString(1) %></td>
                              <td><%= rs.getString(2) %></td> 
                              <td><%= rs.getString(3) %></td>
                              <td><%= rs.getString(4) %></td>
                              <td><%= rs.getString(5) %></td>
                          </tr>
                          <% }
                          %>
                      </tbody> 
                  </table>
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
</html>