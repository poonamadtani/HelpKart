<%@page import="mysrc.DataManager"%>
<%@page import="java.sql.ResultSet"%>

<%

    if (request.getParameter("did") != null) {
        String did = request.getParameter("did");
        String rows = DataManager.setData("Delete from feedback where feedback_id='" + did + "'");

        response.sendRedirect("view-feedback.jsp?error=" + rows);

    }

%>

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
                                            Feedback Details</h3>
                                    </div>
                                    <div class="panel-body">
                                        <%                                            if (request.getParameter("error") != null) {
                                                if (request.getParameter("error").equals("1")) {
                                                    out.println("<div class='alert alert-success'> Feedback Deleted Successfully </div>");
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
                                                               Feedback Id
                                                            </th>
                                                            <th>
                                                               Feedback Date
                                                            </th>
                                                            <th>
                                                               Description
                                                            </th>
                                                            <th>
                                                               NGO Name
                                                            </th>
                                                            <th>
                                                               Donor Name
                                                            </th>
                                                            
                                                            <th>  
                                                             
                                                            </th>    
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ResultSet rs = DataManager.getData("SELECT F.feedback_id,F.date,F.description,M.ngo_name,D.donor_Name FROM feedback F INNER JOIN ngo_master M ON (F.`ngo_id`=M.`ngo_id`) INNER JOIN donor_master D ON (F.`donor_id`=D.`donor_id`)");
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
                                                                 <a href="update-feedback.jsp?eid=<%= rs.getString(1)%>">Edit</a> | <a href="?did=<%= rs.getString(1)%>">Delete</a>
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