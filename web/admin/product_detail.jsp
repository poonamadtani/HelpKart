 

<%@page import="java.sql.ResultSet"%>
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
                                    Product Details</h4>
                               
                                
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
                                                                out.println("<div class='alert alert-success'> Product Details Added Successfully </div>");
                                                            } else {
                                                                out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                            }
                                                        }
                                    %>
                                            <h3 class="header-title m-t-0">
                                                <small>Fields Required</small></h3>
                                            <div class="m-t-20">
                                                <form class="" action="../addprodetail" method="post" enctype="multipart/form-data">
                                                 <div class="form-group">
                                                    <label>
                                                        Category Id</label>
                                                     <select  class="form-control" name="cat_id" required>
                                                        <option>Select Category</option>
                                                        <%
                                                            ResultSet rscat = DataManager.getData("select * from product_cat");
                                                            while(rscat.next())
                                                            {
                                                                out.println("<option value='" + rscat.getString(1) + "'>" + rscat.getString(2) + "</option>");
                                                            }
                                                            %>
                                                     </select></div>
                                                <div class="form-group">
                                                    <label>
                                                        Product Name</label>
                                                    
                                                    <input type="text" class="form-control" name="pro_name" required placeholder="Enter Product Name" /></div>
                                                <div class="form-group">
                                                    <label>
                                                        Description</label><div>
                                                            <textarea required class="form-control" name="pro_desc" rows="5"></textarea></div>
                                                </div>
                                                    <div class="form-group">
                                                    <label>
                                                        Product Price</label>
                                                        <input type="number" class="form-control" name="pro_price" required placeholder="Enter Product Price" /></div>
                                                    <div class="form-group">
                                                    <label>
                                                        Product Quantity</label>
                                                        <input type="text" class="form-control" name="pro_qty" required placeholder="Enter Product Quantity" /></div>
                                                    <div class="form-group">
                                                    <label>
                                                        Product Image</label>
                                                        <input type="file" name="pro_image" class="form-control" /></div>
                                                         <div class="form-group">
                                                    <label>
                                                        Unit Id</label>
                                                             <select  class="form-control" name="unit_id" required>
                                                        <option>Select Unit</option>
                                                        <%
                                                            ResultSet rsunit = DataManager.getData("select * from unit");
                                                            while(rsunit.next())
                                                            {
                                                                out.println("<option value='" + rsunit.getString(1) + "'>" + rsunit.getString(2) + "</option>");
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






