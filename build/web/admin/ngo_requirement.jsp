 

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
                                    NGO Requirement Details</h4>
                                
                               
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
                                                                out.println("<div class='alert alert-success'> NGO Requirements Added Successfully </div>");
                                                            } else {
                                                                out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                            }
                                                        }
                                    %>
                                            <h3 class="header-title m-t-0">
                                                <small>Fields Required</small></h3>
                                            <div class="m-t-20">
                                                <form class="" action="../addngoreq" method="post">
                                                 <div class="form-group">
                                                    <label>
                                                        Product Id</label>
                                                     <select  class="form-control" name="product_id" required>
                                                        <option>Select Product</option>
                                                        <%
                                                            ResultSet rspro = DataManager.getData("select * from product_detail");
                                                            while(rspro.next())
                                                            {
                                                                out.println("<option value='" + rspro.getString(1) + "'>" + rspro.getString(3) + "</option>");
                                                            }
                                                            %>
                                                     </select></div>
                                                <div class="form-group">
                                                    <label>
                                                        NGO Id</label>
                                                    <select  class="form-control" name="ngo_id" required>
                                                        <option>Select NGO</option>
                                                        <%
                                                            ResultSet rsngo = DataManager.getData("select * from ngo_master");
                                                            while(rsngo.next())
                                                            {
                                                                out.println("<option value='" + rsngo.getString(1) + "'>" + rsngo.getString(4) + "</option>");
                                                            }
                                                            %>
                                                    </select></div>
                                                     <div class="form-group">
                                                    <label>
                                                        Requirement Quantity</label>
                                                         <input type="text" class="form-control" name="ngoreq_qty" required placeholder="Enter Required Quantity" /></div>
                                                         
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






