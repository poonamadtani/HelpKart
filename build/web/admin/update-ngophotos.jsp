<%@page import="mysrc.DataManager"%>
<%@page import="java.sql.ResultSet"%>
<%

    if (request.getParameter("eid") != null) {
        String eid = request.getParameter("eid");
        ResultSet rs = DataManager.getData("Select * from ngo_photo where photo_id=" + eid);
        if (rs.next()) {%>
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
                                        Update NGO Photos</h4>

                                    
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
                                                <%                                      if (request.getParameter("error") != null) {
                                                        if (request.getParameter("error").equals("1")) {
                                                            out.println("<div class='alert alert-success'> NGO Photos Updated Successfully </div>");
                                                        } else {
                                                            out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                        }
                                                    }
                                                %>
                                                <h3 class="header-title m-t-0">
                                                    <small>Fields Required</small></h3>
                                                <div class="m-t-20">
                                                    <form class="" action="../updatengophotos" method="post">
                                                        <input type="hidden" name="eid" value="<%= eid%>"/>
                                                       
                                                        <div class="form-group">
                                                            <label>
                                                                NGO Id</label>
                                                            <select  class="form-control" name="ngo_id" required>
                                                                <option>Select NGO</option>
                                                                <%
                                                                    ResultSet rsngo = DataManager.getData("select * from ngo_master");
                                                                    while (rsngo.next()) {
                                                                        String result = (rsngo.getString(1).equals(rs.getString(3))) ? "selected" : "";
                                                                        out.println("<option value='" + rsngo.getString(1) + "'" + result + ">" + rsngo.getString(4) + "</option>");
                                                                    }
                                                                %>
                                                            </select></div>
                                                        <div class="form-group">
                                                            <label>
                                                                Photo Caption</label>
                                                            <input type="text" class="form-control" name="ngophotos_cap" value="<%= rs.getString(4)%>" required placeholder="Enter Photo Caption" /></div>
                                                        <div class="form-group">
                                                            <label>
                                                                NGO Photo</label>
                                                            <input type="file" class="form-control" name="ngophotos_url" value="<%= rs.getString(2)%>" required placeholder="Enter Photo URL" /></div>
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
            response.sendRedirect("view-ngophotos.jsp");
        }
    } else {
        response.sendRedirect("view-ngophotos.jsp");
    }
%>