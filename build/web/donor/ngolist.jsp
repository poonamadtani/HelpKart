<%@page import="java.sql.ResultSet"%>
<%@page import="mysrc.DataManager"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">
    <%@include file="mytheme/headerscripts.jsp" %>
    <body class="">
        <div id="wrapper" class="clearfix">
            <!-- preloader -->

            <!-- Header -->
            <%@include file="mytheme/header.jsp" %>

            <!-- Start main-content -->
            <div class="main-content">
                <!-- Section: inner-header -->
                <!-- Section: event calendar -->
                <section>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <%  ResultSet rsngo = DataManager.getData("select * from ngo_master");
                                    while (rsngo.next()) { %>                                                           
                                <div class="upcoming-events bg-white-f3 mb-20">
                                    <div class="row">
                                        <%  ResultSet rsngopic = DataManager.getData("select photo_url from ngo_photo where ngo_id=" + rsngo.getString(1));
                                            rsngopic.next();%> 
                                        <div class="col-sm-4 pr-0 pr-sm-15">
                                            <div class="thumb p-15">

                                                <img class="img-fullwidth" src="../ngophotos/<%= rsngopic.getString(1)%>" alt="...">
                                            </div>
                                        </div>
                                        <div class="col-sm-4 pl-0 pl-sm-15">
                                            <div class="event-details p-15 mt-20">
                                                <h4 class="mt-0 text-uppercase font-weight-500"><%= rsngo.getString(4)%></h4>
                                                <p><%= rsngo.getString(8)%></p>
                                                <a href="ngodetail.jsp?ngoid=<%= rsngo.getString(1)%>" class="btn btn-flat btn-dark btn-theme-colored btn-sm mt-10">Details <i class="fa fa-angle-double-right"></i></a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <% }
                                %>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <!-- end main-content -->

            <!-- Footer -->
            <%@include file="mytheme/footer.jsp" %>
            <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- end wrapper -->

        <!-- Footer Scripts -->
        <!-- JS | Custom script for all pages -->
        <%@include file="mytheme/scripts.jsp" %>

    </body>
</html>