<%
    if(request.getParameter("did") != null){
        String did = request.getParameter("did");
        String rows = DataManager.setData("delete from ngo_req where req_id='" + did + "'");
        response.sendRedirect("view-ngoreq.jsp?error=" + rows);
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
                                            NGO Requirement Details</h3>
                                    </div>
                                    <div class="panel-body">
                                         <%
                                    if (request.getParameter("error") != null) {
                                                            if (request.getParameter("error").equals("1")) {
                                                                out.println("<div class='alert alert-success'> NGO Requirements Deleted Successfully </div>");
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
                                                                Requirement Id
                                                            </th>
                                                            <th>
                                                                Quantity
                                                            </th>
                                                            <th>
                                                                NGO Name
                                                            </th>
                                                            <th>
                                                                Product Name
                                                            </th>
                                                           
                                                            <th>    
                                                            </th>    
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ResultSet rs = DataManager.getData("SELECT R.req_id,R.qty,M.ngo_name,P.product_name FROM ngo_req R INNER JOIN ngo_master M ON (R.`ngo_id`=M.`ngo_id`) INNER JOIN `product_detail` P ON(R.`product_id`=P.`product_id`)");
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
                                                                <a href="update-ngoreq.jsp?eid=<%= rs.getString(1) %>">Edit</a> |  <a href="?did=<%= rs.getString(1) %>">Delete</a>
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