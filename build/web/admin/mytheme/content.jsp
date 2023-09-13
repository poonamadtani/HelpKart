<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="mysrc.DataManager"%>
<%@page import="java.sql.ResultSet"%>
<div class="content-page">
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-lg-3">
                    <div class="panel panel-primary text-center">
                        <div class="panel-heading">
                            <h4 class="panel-title">Total NGO</h4>
                        </div>
                        <div class="panel-body">
                            <%
                                ResultSet rs = DataManager.getData("Select count(*) from ngo_master");
                                rs.next();
                            %>
                            <h3 class=""><b><%= rs.getString(1)%></b></h3>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="panel panel-primary text-center">
                        <div class="panel-heading">
                            <h4 class="panel-title">Total Donor</h4>
                        </div>
                        <div class="panel-body">
                            <%
                                rs = DataManager.getData("Select count(*) from donor_master");
                                rs.next();
                            %>
                            <h3 class=""><b><%= rs.getString(1)%></b></h3>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="panel panel-primary text-center">
                        <div class="panel-heading">
                            <h4 class="panel-title">Total Product</h4>
                        </div>
                        <div class="panel-body">
                            <%
                                rs = DataManager.getData("Select count(*) from product_detail");
                                rs.next();
                            %>
                            <h3 class=""><b><%= rs.getString(1)%></b></h3>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="panel panel-primary text-center">
                        <div class="panel-heading">
                            <h4 class="panel-title">Total Donation Request Order</h4>
                        </div>
                        <div class="panel-body">
                            <%
                                rs = DataManager.getData("Select count(*) from order_master");
                                rs.next();
                            %>
                            <h3 class=""><b><%= rs.getString(1)%></b></h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title">
                                        Today's Order Request</h3>
                                </div>
                                <div class="panel-body">
                                    <table id="datatable" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>
                                                    Order Id
                                                </th>
                                                <th>
                                                    Order Date
                                                </th>
                                                <th>
                                                    Order Status
                                                </th>
                                                <th>
                                                    Donor Name
                                                </th>
                                                <th>
                                                    NGO Name
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                Date d1 = new Date();
                                                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                                                rs = DataManager.getData("SELECT O.order_id,O.date,O.status,D.donor_name,M.ngo_name FROM order_master O INNER JOIN donor_master D ON (O.donor_id=D.`donor_id`) INNER JOIN ngo_master M ON (O.`ngo_id`=M.`ngo_id`) where date='" + dateFormat.format(d1) + "'");
                                                while (rs.next()) {%>
                                            <tr>
                                                <td>
                                                    <%= rs.getString(1)%> 
                                                </td>
                                                <td>
                                                    <%= rs.getString(2)%> 
                                                </td>
                                                <td>
                                                    <%= rs.getString(3)%> 
                                                </td>
                                                <td>
                                                    <%= rs.getString(4)%> 
                                                </td>
                                                <td>
                                                    <%= rs.getString(5)%> 
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