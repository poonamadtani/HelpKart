<%

    if (request.getParameter("did") != null) {
        String did = request.getParameter("did");
        String rows = DataManager.setData("Delete from donor_master where donor_id='" + did + "'");

        response.sendRedirect("view-donor.jsp?error=" + rows);

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
                                            Donor Details</h3>
                                    </div>
                                    <div class="panel-body">
                                        <%                                            if (request.getParameter("error") != null) {
                                                if (request.getParameter("error").equals("1")) {
                                                    out.println("<div class='alert alert-success'> Donor Deleted Successfully </div>");
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
                                                                Donor Id
                                                            </th>
                                                            <th>
                                                                Email
                                                            </th>
                                                            <th>
                                                                Name
                                                            </th>
                                                            <th>
                                                                Age
                                                            </th>
                                                            <th>
                                                                Gender
                                                            </th>
                                                            <th>
                                                                Phone No
                                                            </th>
                                                            <th>
                                                                City
                                                            </th>
                                                            <th>
                                                                Security Question
                                                            </th>
                                                            <th>
                                                                Answer
                                                            </th>
                                                            <th>    
                                                            </th>    
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <% ResultSet rs = DataManager.getData("SELECT * FROM `donor_master`");
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
                                                                <%= rs.getString(5)%> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(6)%> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(7)%> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(8)%> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(9)%> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(10)%> 
                                                            </td>
                                                            <td>
                                                                <a href="update-donor.jsp?eid=<%= rs.getString(1)%>">Edit</a> | <a href="?did=<%= rs.getString(1)%>">Delete</a>
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