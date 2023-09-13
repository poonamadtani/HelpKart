<%

    if (request.getParameter("oid") != null) {
        String oid = request.getParameter("oid");
        String rows = DataManager.setData("Update order_master set status='Delivered' where order_id='" + oid + "'");
        response.sendRedirect("view-order.jsp");
    }

%>

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
                <!-- Divider: Google Map -->
                <!-- Divider: Contact -->
                <section class="divider">
                    <div class="container">
                        <div class="row pt-30">

                            <div class="col-md-12">
                                <h3 class="line-bottom mt-0 mb-30">Order Details</h3>
                                <!-- Contact Form -->


                                <table id="datatable" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>
                                                Order Id
                                            </th>
                                            <th>
                                                Order Date
                                            </th>
                                            <th>
                                                Donor Name
                                            </th>

                                            <th> 

                                            </th>    
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%                                            ResultSet rs = DataManager.getData("SELECT O.order_id,O.date,O.status,D.donor_name,M.ngo_name FROM order_master O INNER JOIN donor_master D ON (O.donor_id=D.`donor_id`) INNER JOIN ngo_master M ON (O.`ngo_id`=M.`ngo_id`)where M.`ngo_id`=" + session.getAttribute("id"));
                                            while (rs.next()) {%>
                                        <tr>
                                            <td>
                                                <%= rs.getString(1)%> 
                                            </td>
                                            <td>
                                                <%= rs.getString(2)%> 
                                            </td>
                                            <td>
                                                <%= rs.getString(4)%> 
                                            </td>

                                            <td>
                                                <%
                                                    if (rs.getString(3).equals("Delivered")) {
                                                        out.print("<a href='#'>" + rs.getString(3) + "</a>");
                                                    } else {
                                                        out.print("<a href='?oid=" + rs.getString(1) + "'>Confirm Delivery</a>");
                                                    }
                                                %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan='5'>
                                                <h3>Order Details</h3>
                                                <table id="datatable" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                                Product Name
                                                            </th>
                                                            <th>
                                                                Quantity
                                                            </th>
                                                            <th>
                                                                Price
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ResultSet rs1 = DataManager.getData("SELECT D.detail_id,O.order_id,P.product_name,D.qty,D.price FROM order_detail D INNER JOIN order_master O ON (D.`order_id`=O.`order_id`) INNER JOIN `product_detail` P ON (D.`product_id`=P.`product_id`) where O.`order_id`=" + rs.getString(1));
                                                            while (rs1.next()) {%>
                                                        <tr>
                                                            <td>
                                                                <%= rs1.getString(3)%> 
                                                            </td>
                                                            <td>
                                                                <%= rs1.getString(4)%> 
                                                            </td>
                                                            <td>
                                                                <%= rs1.getString(5)%> 
                                                            </td>
                                                        </tr>
                                                        <%}
                                                        %>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <%}
                                        %>



                                    </tbody>
                                </table>
                            </div>

                        </div>



                        <!-- Contact Form Validation-->


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