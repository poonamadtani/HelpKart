<%@page import="mysrc.DataManager"%>
<%@page import="java.sql.ResultSet"%>
<%

    if (request.getParameter("eid") != null) {
        String eid = request.getParameter("eid");
        ResultSet rs = DataManager.getData("Select * from admin_master where admin_id=" + eid );
        if(rs.next()) {%>
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
                        <div class="col-sm-12">
                            <div class="page-header-title">
                                <h4 class="pull-left page-title">
                                    Update Admin</h4>
                                
                                
                                <div class="clearfix">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                        Details</h3>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-12 col-xs-12">
                                            <%
                                                        if (request.getParameter("error") != null) {
                                                            if (request.getParameter("error").equals("1")) {
                                                                out.println("<div class='alert alert-success'> Admin Updated Successfully </div>");
                                                            } else {
                                                                out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                            }
                                                        }
                                                    %>
                                            <h3 class="header-title m-t-0">
                                                <small>Fields Required</small></h3>
                                            <div class="m-t-20">
                                                <form class=""  action="../updateadmin" method="post">
                                                    <input type="hidden" name="eid" value="<%= eid %>">
                                                <div class="form-group">
                                                    <label>
                                                        Admin Name</label>
                                                    <input type="text" value="<%= rs.getString(2) %>" class="form-control" name="admin_name" required placeholder="Enter Your Name" /></div>
                                                    
                                                    <div class="form-group">
                                                    <label>
                                                        Email_id</label>
                                                    <input type="email" value="<%= rs.getString(3) %>"class="form-control" name="admin_email" required placeholder="Enter Email id" /></div>
                                                     <div class="form-group">
                                                    <label>
                                                        Password</label>
                                                    <input type="password" value="<%= rs.getString(4) %>" class="form-control" name="admin_pass" required placeholder="Enter Password" /></div>
                                                    
                                                    <div class="form-group">
                                                    <div>
                                                        <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                            Submit
                                                        </button>
                                                        <button type="reset" class="btn btn-default waves-effect m-l-5">
                                                            Cancel
                                                        </button>
                                                    </div>
                                                </div>
                                                </form>
                                            </div>
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
<%} else {
    response.sendRedirect("view-donor.jsp");
}
} else {
    response.sendRedirect("view-donor.jsp");
}

%>





