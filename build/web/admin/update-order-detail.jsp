<%@page import="mysrc.DataManager"%>
<%@page import="java.sql.ResultSet"%>
<%

    if (request.getParameter("eid") != null) {
        String eid = request.getParameter("eid");
        ResultSet rs = DataManager.getData("Select * from order_detail where detail_id=" + eid );
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
                                   Update Order Details</h4>
                                
                                
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
                                                                out.println("<div class='alert alert-success'> Order Detail Updated Successfully </div>");
                                                            } else {
                                                                out.println("<div class='alert alert-danger'>" + request.getParameter("error") + "</div>");
                                                            }
                                                        }
                                                    %>
                                            <h3 class="header-title m-t-0">
                                                <small>Fields Required</small></h3>
                                            <div class="m-t-20">
                                                <form class="" action="../updateorderdetail" method="post">
                                                    <input type="hidden" name="eid" value="<%= eid %>">
                                                    <div class="form-group">
                                                    <label>
                                                        Order Id</label>
                                                     <select class="form-control" name="order_id" required> 
                                                                <option>Select Order Id</option>
                                                                <%
                                                                    ResultSet rsorder = DataManager.getData("Select * from order_master");
                                                                    
                                                                    while (rsorder.next()) {
                                                                        String result=(rsorder.getString(1).equals(rs.getString(2)))? "selected" : "";
                                                                        out.print("<option value='" + rsorder.getString(1) + "'" + result + ">" + rsorder.getString(1) + "</option>");
                                                                    }
                                                                %>
                                                            </select></div>
                                                 <div class="form-group">
                                                    <label>
                                                        Product Id</label>
                                                     <select class="form-control" name="product_id" required> 
                                                     <option>Select Product Id</option>
                                                                <%
                                                                    ResultSet rspro = DataManager.getData("Select * from product_detail");
                                                                   
                                                                    while (rspro.next()) {
                                                                         String result=(rspro.getString(1).equals(rs.getString(3)))? "selected" : "";
                                                                        out.print("<option value='" + rspro.getString(1) + "'" + result + ">" + rspro.getString(3) + "</option>");
                                                                    }
                                                                %>
                                                            </select></div>
                                                
                                                     <div class="form-group">
                                                    <label>
                                                         Quantity</label>
                                                         <input type="text" value="<%= rs.getString(4) %>" class="form-control" name="orderdet_qty" required placeholder="Enter Required Quantity" /></div>
                                                       <div class="form-group">
                                                    <label>
                                                         Price</label>
                                                           <input type="number" value="<%= rs.getString(5) %>" class="form-control" name="orderdet_price" required placeholder="Enter Price" /></div>  
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
    response.sendRedirect("view-order-detail.jsp");
}
} else {
    response.sendRedirect("view-order-detail.jsp");
}

%>





