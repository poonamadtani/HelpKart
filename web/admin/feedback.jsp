 

<%@page import="java.sql.ResultSet"%>
<%@page import="mysrc.DataManager"%>
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
                                    Feedback Details</h4>
                                     
                                
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
                                                                out.println("<div class='alert alert-success'> Feedback Added Successfully </div>");
                                                            } else {
                                                                out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                            }
                                                        }
                                                    %>
                                            <h3 class="header-title m-t-0">
                                                <small>Fields Required</small></h3>
                                            <div class="m-t-20">
                                                <form class="" action="../addfeedback" method="post">
                                                 <div class="form-group">
                                                    <label>
                                                        Donor Id</label>
                                                     <select class="form-control" name="donor_id" required> 
                                                                <option>Select Donor</option>
                                                                <%
                                                                    ResultSet rsdonor = DataManager.getData("Select * from donor_master");
                                                                    while (rsdonor.next()) {
                                                                        out.print("<option value='" + rsdonor.getString(1) + "'>" + rsdonor.getString(4) + "</option>");
                                                                    }
                                                                %>
                                                            </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>
                                                        NGO Id</label>
                                                    <select class="form-control" name="ngo_id" required> 
                                                                <option>Select NGO</option>
                                                                <%
                                                                    ResultSet rsngo = DataManager.getData("Select * from ngo_master");
                                                                    while (rsngo.next()) {
                                                                        out.print("<option value='" + rsngo.getString(1) + "'>" + rsngo.getString(2) + "</option>");
                                                                    }
                                                                %>
                                                            </select></div>
                                                     <div class="form-group">
                                                    <label>
                                                        Date</label>
                                                         <input type="date" class="form-control" name="feed_date" required placeholder="Enter Order Date" /></div>
                                                        <div class="form-group">
                                                    <label>
                                                        Description</label><div>
                                                            <textarea required class="form-control" name="feed_desc" rows="5"></textarea></div>
                                                </div>
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






