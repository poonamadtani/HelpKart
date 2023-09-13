<%

    if (request.getParameter("did") != null) {
        String did = request.getParameter("did");
        String rows = DataManager.setData("Delete from order_detail where detail_id='" + did + "'");

        response.sendRedirect("view-order-detail.jsp?error=" + rows);

    }

%>
<%@page import="mysrc.DataManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>

    <head>
        <%@include file="mytheme/header.jsp" %>
    </head>
    <body class="fixed-left">
        <div id="wrapper">
            <%@include file="mytheme/topbar.jsp" %>
            <%@include file="mytheme/sidebar.jsp" %>
            <div class="content-page">
                <div class="content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            Order Details</h3>
                                    </div>
                                    <div class="panel-body">
                                        <%                                            if (request.getParameter("error") != null) {
                                                if (request.getParameter("error").equals("1")) {
                                                    out.println("<div class='alert alert-success'> Order Dtaills Deleted Successfully </div>");
                                                } else {
                                                    out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                }
                                            }
                                        %>
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <table id="datatable" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                               Detail Id
                                                            </th>
                                                            <th>
                                                               Order Id
                                                            </th>
                                                            <th>
                                                               Product Name
                                                            </th>
                                                            <th>
                                                               Quantity
                                                            </th>
                                                            <th>
                                                               Price
                                                            </th>
                                                            
                                                            <th>
                                                               
                                                            </th>    
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ResultSet rs = DataManager.getData("SELECT D.detail_id,O.order_id,P.product_name,D.qty,D.price FROM order_detail D INNER JOIN order_master O ON (D.`order_id`=O.`order_id`) INNER JOIN `product_detail` P ON (D.`product_id`=P.`product_id`)");
                                                            while (rs.next()) { %>
                                                        <tr>
                                                            <td>
                                                                <%= rs.getString(1) %> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(2) %> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(3) %> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(4) %> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(5) %> 
                                                            </td>
                                                            
                                                            <td>
                                                              <a href="update-order-detail.jsp?eid=<%= rs.getString(1)%>">Edit</a> | <a href="?did=<%= rs.getString(1)%>">Delete</a>
                                                            </td>
                                                        </tr>
                                                        <%}
                                                        %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="mytheme/footer.jsp" %>
        </div>
        <%@include file="mytheme/scripts.jsp" %>
    </body>
</html>