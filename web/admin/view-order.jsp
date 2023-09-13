<%

    if (request.getParameter("did") != null) {
        String did = request.getParameter("did");
        String rows = DataManager.setData("Delete from order_master where order_id='" + did + "'");

        response.sendRedirect("view-order.jsp?error=" + rows);

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
                                            Order List</h3>
                                    </div>
                                    <div class="panel-body">
                                        <%                                            if (request.getParameter("error") != null) {
                                                if (request.getParameter("error").equals("1")) {
                                                    out.println("<div class='alert alert-success'> Order Deleted Successfully </div>");
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
                                                               Order Id
                                                            </th>
                                                            <th>
                                                               Order Date
                                                            </th>
                                                            <th>
                                                               Order Status
                                                            </th>
                                                            <th>
                                                               Donor Name
                                                            </th>
                                                            <th>
                                                               NGO Name
                                                            </th>
                                                            
                                                            <th> 
                                                              
                                                            </th>    
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ResultSet rs = DataManager.getData("SELECT O.order_id,O.date,O.status,D.donor_name,M.ngo_name FROM order_master O INNER JOIN donor_master D ON (O.donor_id=D.`donor_id`) INNER JOIN ngo_master M ON (O.`ngo_id`=M.`ngo_id`)");
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
                                                                <a href="update-order.jsp?eid=<%= rs.getString(1)%>">Edit</a>| <a href="?did=<%= rs.getString(1)%>">Delete</a>
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