<!DOCTYPE html>
<html dir="ltr" lang="en">

    <!-- Mirrored from kodesolution.com/demo/wxyz/w/echarity/v2.0/demo/page-contact4.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 20 Feb 2018 10:32:21 GMT -->
    <%@include file="mytheme/headerscripts.jsp" %>
    <body class="">
        <div id="wrapper" class="clearfix">
            <!-- preloader -->
            <%@include file="mytheme/preloader.jsp" %>

            <!-- Header -->

            <%@include file="mytheme/header.jsp" %>
            <!-- Start main-content -->
            <div class="main-content">
                <!-- Divider: Google Map -->
                <!-- Divider: Contact -->
                <section class="divider">
                    <div class="container">
                        <div class="row pt-30">
                            
                            <div class="col-md-12">
                                <h3 class="line-bottom mt-0 mb-30">NGO Feedback Details</h3>
                                <!-- Contact Form -->
                                
                                    
                                                <table id="datatable" class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th style="width: 100px">
                                                               Feedback Id
                                                            </th>
                                                            <th style="width: 120px">
                                                               Feedback Date
                                                            </th>
                                                            <th style="width: 600px">
                                                               Description
                                                            </th>
                                                            <th style="width: 100px">
                                                               NGO Name
                                                            </th>
                                                            <th style="width: 100px">
                                                               Donor Name
                                                            </th>
                                                            
                                                             
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%
                                                            ResultSet rs = DataManager.getData("SELECT F.feedback_id,F.date,F.description,M.ngo_name,D.donor_Name FROM feedback F INNER JOIN ngo_master M ON (F.`ngo_id`=M.`ngo_id`) INNER JOIN donor_master D ON (F.`donor_id`=D.`donor_id`) where F.ngo_id="+ session.getAttribute("id"));
                                                            while (rs.next()) { %>
                                                        <tr>
                                                            <td>
                                                                <%= rs.getString(1) %> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(2) %> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(3) %> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(4) %> 
                                                            </td>
                                                            <td>
                                                                <%= rs.getString(5) %> 
                                                            </td>
                                                            
                                                                                                                    </tr>
                                                        <%}
                                                        %>
                                                    </tbody>
                                                </table>
                                            </div>
                                        
                                    </div>

                                    
                           
                                <!-- Contact Form Validation-->
                                
                          
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

    <!-- Mirrored from kodesolution.com/demo/wxyz/w/echarity/v2.0/demo/page-contact4.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 20 Feb 2018 10:32:22 GMT -->
</html>