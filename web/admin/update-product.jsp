<%@page import="mysrc.DataManager"%>
<%@page import="java.sql.ResultSet"%>
<%

    if (request.getParameter("eid") != null) {
        String eid = request.getParameter("eid");
        ResultSet rs = DataManager.getData("Select * from product_detail where product_id=" + eid);
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
                                        Update Product Details</h4>


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
                                                            out.println("<div class='alert alert-success'> Product Details Updated Successfully </div>");
                                                        } else {
                                                            out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                        }
                                                    }
                                                %>
                                                <h3 class="header-title m-t-0">
                                                    <small>Fields Required</small></h3>
                                                <div class="m-t-20">
                                                    <form class="" action="../updateprodetail" method="post" enctype="multipart/form-data">
                                                        <input type="hidden" name="eid" value="<%= eid%>"/>
                                                        <div class="form-group">
                                                            <label>
                                                                Category Id</label>
                                                            <select  class="form-control" name="cat_id" required>
                                                                <option>Select Category</option>
                                                                <%
                                                                    ResultSet rscat = DataManager.getData("select * from product_cat");
                                                                    while (rscat.next()) {
                                                                        String result = (rscat.getString(1).equals(rs.getString(2))) ? "selected" : "";
                                                                        out.println("<option value='" + rscat.getString(1) + "'" + result + ">" + rscat.getString(3) + "</option>");
                                                                    }
                                                                %>
                                                            </select></div>
                                                        <div class="form-group">
                                                            <label>
                                                                Product Name</label>
                                                            <input type="text" value="<%= rs.getString(3)%>" class="form-control" name="pro_name" required placeholder="Enter Product Name" /></div>
                                                        <div class="form-group">
                                                            <label>
                                                                Description</label><div>
                                                                <textarea required class="form-control" value="" name="pro_desc" rows="5"><%= rs.getString(6)%></textarea></div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>
                                                                Product Price</label>
                                                            <input type="number" class="form-control" value="<%= rs.getString(4)%>" name="pro_price" required placeholder="Enter Product Price" /></div>
                                                        <div class="form-group">
                                                            <label>
                                                                Product Quantity</label>
                                                            <input type="text" class="form-control" value="<%= rs.getString(5)%>" name="pro_qty" required placeholder="Enter Product Quantity" /></div>
                                                        <div class="form-group">
                                                            <label>
                                                                Product Image</label>
                                                            <br><img src ="../productphotos//<%= rs.getString(7)%>" height="70px" width="70px" />
                                                            <input type="file" name="pro_image" value="<%= rs.getString(7)%>" class="form-control" /></div>
                                                        <div class="form-group">
                                                            <label>
                                                                Unit Id</label>
                                                            <select  class="form-control" name="unit_id" required>
                                                                <option>Select Unit</option>
                                                                <%
                                                                    ResultSet rsunit = DataManager.getData("select * from unit");
                                                                    while (rsunit.next()) {
                                                                        String result = (rsunit.getString(1).equals(rs.getString(8))) ? "selected" : "";
                                                                        out.println("<option value='" + rsunit.getString(1) + "'" + result + ">" + rsunit.getString(2) + "</option>");
                                                                    }
                                                                %>
                                                            </select></div>
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
            response.sendRedirect("view-prodetail.jsp");
        }
    } else {
        response.sendRedirect("view-prodetail.jsp");
    }
%>