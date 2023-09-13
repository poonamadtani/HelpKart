<div class="left side-menu">
    <div class="sidebar-inner slimscrollleft">
        <div class="user-details">
            <div class="text-center">
                <img src="./mytheme/assets/images/logo.jpg" alt="" class="img-circle"></div>
            <div class="user-info">
                <div class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <%=    session.getAttribute("name")    %>
                    </a><ul class="dropdown-menu">
                        <li><a href="change_password.jsp">Change Password</a></li><li><li>
                           
                        <li><a href="login.jsp">Logout</a></li></ul>
                </div>
                <p class="text-muted m-0">
                    <i class="fa fa-dot-circle-o text-success"></i>Online</p>
            </div>
        </div>
        <div id="sidebar-menu">
            <ul>
                <li>
                    <a href="index.jsp" class="waves-effect">
                        <i class="ti-home"></i><span>Dashboard</span>
                    </a>
                </li>
                    <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect">
                        <i class="ti-agenda"></i>
                        <span>Insert Pages</span>
                        <span class="pull-right"><i class="mdi mdi-plus"></i></span>
                    </a>
                    <ul class="list-unstyled">
                        <li>
                            <a href="admin_reg.jsp">Add Admin</a>
                        </li>
                        <li>
                            <a href="donor_regis.jsp">Add Donor</a>
                        </li>
                        <li>
                            <a href="ngo_regis.jsp">Add NGO</a>
                        </li>
                        <li>
                            <a href="ngo_photos.jsp">Add NGO Photos</a>
                        </li>
                        <li>
                            <a href="ngo_requirement.jsp">Add NGO Requirements</a>
                        </li>
                        <li>
                            <a href="product_detail.jsp">Add Product</a>
                        </li>
                        <li>
                            <a href="product_cat.jsp">Add Product Category</a>
                        </li>
                        <li>
                            <a href="unit.jsp">Add Unit</a>
                        </li>
                        
                    </ul>

                </li>       
                
                <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect">
                        <i class="ti-agenda"></i>
                        <span>NGO Info</span>
                        <span class="pull-right"><i class="mdi mdi-plus"></i></span>
                    </a>
                    <ul class="list-unstyled">
                        <li>
                            <a href="view-ngo.jsp">NGO Details</a>
                        </li>
                        <li>
                            <a href="view-ngophotos.jsp">NGO Photos</a>
                        </li>
                        <li>
                            <a href="view-ngoreq.jsp">NGO Requirements</a>
                        </li>
                    </ul>

                </li>
                   <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect">
                        <i class="ti-agenda"></i>
                        <span>Donor Info</span>
                        <span class="pull-right"><i class="mdi mdi-plus"></i></span>
                    </a>
                    <ul class="list-unstyled">
                        <li>
                            <a href="view-donor.jsp">Donor Details</a>
                        </li>
                        <li>
                            <a href="view-order.jsp">Order List</a>
                        </li>
                      
                    </ul>

                </li>
                   <li class="has_sub">
                    <a href="javascript:void(0);" class="waves-effect">
                        <i class="ti-agenda"></i>
                        <span>Product Info</span>
                        <span class="pull-right"><i class="mdi mdi-plus"></i></span>
                    </a>
                    <ul class="list-unstyled">
                        <li>
                            <a href="view-procat.jsp">Product Categories</a>
                        </li>
                        <li>
                            <a href="view-prodetail.jsp">Product Details</a>
                        </li>
                        <li>
                            <a href="view-unit.jsp">Unit Details</a>
                        </li>
                    </ul>

                </li>
                <li>
                    <a href="view-feedback.jsp" class="waves-effect">
                        <i class="ti-ruler-pencil"></i>
                        <span>Feedback</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="clearfix">
        </div>
    </div>
</div>