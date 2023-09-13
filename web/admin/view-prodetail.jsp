<%
    if(request.getParameter("did") != null){
        String did = request.getParameter("did");
        String rows = DataManager.setData("delete from product_detail where product_id='" + did + "'");
        response.sendRedirect("view-prodetail.jsp?error=" + rows);
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
                                            Product Details</h3>
                                    </div>
                                    <div class="panel-body">
                                         <%
                                    if (request.getParameter("error") != null) {
                                                            if (request.getParameter("error").equals("1")) {
                                                                out.println("<div class='alert alert-success'>Product Deleted Successfully </div>");
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
                                                                Product Id
                                                            </th>
                                                            <th>
                                                                Category Name
                                                            </th>
                                                            <th>
                                                                Product Name
                                                            </th>
                                                            <th>
                                                                Price
                                                            </th>
                                                            <th>
                                                                Quantity
                                                            </th>
                                                             <th>
                                                                Description
                                                            </th>
                                                             <th>
                                                                Product Image
                                                            </th>
                                                             <th>
                                                                Unit Name
                                                            </th>
                                                            <th>    
                                                            </th>    
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ResultSet rs = DataManager.getData("SELECT P.product_id,C.cat_name,P.product_name,P.price,P.qty,P.description,P.product_image,U.unit_type FROM `product_detail` P INNER JOIN `product_cat` C ON (P.`cat_id`=C.`cat_id`) INNER JOIN unit U ON (P.`unit_id`=U.`unit_id`)");
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
                                                                <%= rs.getString(6) %> 
                                                            </td>
                                                             <td>
                                                                <img src="../productphotos//<%= rs.getString(7)%>" height="100px" width="100px" />
                                                            </td>
                                                             <td>
                                                                <%= rs.getString(8) %> 
                                                            </td>
                                                            <td>
                                                                <a href="update-product.jsp?eid=<%= rs.getString(1) %>">Edit</a> |  <a href="?did=<%= rs.getString(1) %>">Delete</a>
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