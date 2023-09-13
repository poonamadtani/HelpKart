 
<%@page import="mysrc.DataManager"%>
<%@page import="java.sql.ResultSet"%>
<%

    if (request.getParameter("eid") != null) {
        String eid = request.getParameter("eid");
        ResultSet rs = DataManager.getData("Select * from unit where unit_id=" + eid );
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
                                   Update Unit Details</h4>
                                
                                
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
                                                                out.println("<div class='alert alert-success'> Unit Detail Updated Successfully </div>");
                                                            } else {
                                                                out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                            }
                                                        }
                                                    %>
                                            <h3 class="header-title m-t-0">
                                                <small>Fields Required</small></h3>
                                            <div class="m-t-20">
                                                <form class="" action="../updateunit" method="post">
                                                    <input type="hidden" name="eid" value="<%= eid %>">
                                                 <div class="form-group">
                                                    <label>
                                                        Unit Type</label>
                                                     <input type="text" value="<%= rs.getString(2) %>" class="form-control" name="unit_type" required placeholder="Enter Unit Type" /></div>
                                                
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
    response.sendRedirect("view-order.jsp");
}
} else {
    response.sendRedirect("view-order.jsp");
}

%>





