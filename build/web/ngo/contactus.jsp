<!DOCTYPE html>
<html dir="ltr" lang="en">
    <%@include file="mytheme/headerscripts.jsp" %>
    <body class="">
        <div id="wrapper" class="clearfix">
            <!-- preloader -->
            <%@include file="mytheme/preloader.jsp" %>
            <!-- Header -->
            <%@include file="mytheme/header.jsp" %>
            <!-- Start main-content -->
            <div class="main-content">


                <!-- Section Content -->
                <div class="section-content">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <h2 class="title">Contact Us</h2>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Divider: Google Map -->
        <section>
            <div class="container-fluid pt-0 pb-0">
                <div class="row">

                    <!-- Google Map HTML Codes -->
                    <div 
                        data-address="Makarba, Ahmedabad, Gujarat 380051"
                        data-popupstring-id="#popupstring1"
                        class="map-canvas autoload-map"
                        data-mapstyle="style2"
                        data-height="400"
                        data-latlng=" 22.994117, 72.507622"
                        data-title="sample title"
                        data-zoom="12"
                        data-marker="images/map-marker.png">
                    </div>
                    <div class="map-popupstring hidden" id="popupstring1">
                        <div class="text-center">
                            <h3>ThemeMascot Office</h3>
                            <p>Makarba, Ahmedabad, Gujarat 380051</p>
                        </div>
                    </div>
                    <!-- Google Map Javascript Codes -->
                    <script src="http://maps.google.com/maps/api/js?key=AIzaSyA7rFt8nOwk6RKttfdl7408XDmbPmrF3-Q"></script>
                    <script src="mytheme/js/google-map-init.js"></script>

                </div>
            </div>
        </section>

        <!-- Divider: Contact -->
        <section class="divider">
            <div class="container">
                <div class="row pt-30">
                    <div class="col-md-4">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="icon-box left media bg-deep p-30 mb-20"> <a class="media-left pull-left" href="#"> <i class="pe-7s-map-2 text-theme-colored"></i></a>
                                    <div class="media-body">
                                        <h5 class="mt-0">Our Office Location</h5>
                                        <p>32-B, Ajanta Resedency, Offspring Road, India.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-12">
                                <div class="icon-box left media bg-deep p-30 mb-20"> <a class="media-left pull-left" href="#"> <i class="pe-7s-call text-theme-colored"></i></a>
                                    <div class="media-body">
                                        <h5 class="mt-0">Contact Number</h5>
                                        <p>+91 12345 65478</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-12">
                                <div class="icon-box left media bg-deep p-30 mb-20"> <a class="media-left pull-left" href="#"> <i class="pe-7s-mail text-theme-colored"></i></a>
                                    <div class="media-body">
                                        <h5 class="mt-0">Email Address</h5>
                                        <p>info@rexontechnologies.com</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-8">
                        <h3 class="line-bottom mt-0 mb-30">Interested in discussing?</h3>
                        <!-- Contact Form -->
                        <form id="contact_form" name="contact_form" class="" action="../contact" method="post">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Name <small>*</small></label>
                                        <input name="form_name" class="form-control" type="text" placeholder="Enter Name" required="">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Email <small>*</small></label>
                                        <input name="form_email" class="form-control required email" type="email" placeholder="Enter Email">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Subject <small>*</small></label>
                                        <input name="form_subject" class="form-control required" type="text" placeholder="Enter Subject">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input name="form_phone" class="form-control" type="text" placeholder="Enter Phone">
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>Message</label>
                                <textarea name="form_message" class="form-control required" rows="5" placeholder="Enter Message"></textarea>
                            </div>
                            <div class="form-group">
                                <input name="form_botcheck" class="form-control" type="hidden" value="" />
                                <button type="submit" class="btn btn-dark btn-theme-colored btn-flat mr-5" data-loading-text="Please wait...">Send your message</button>
                                <button type="reset" class="btn btn-default btn-flat btn-theme-colored">Reset</button>
                            </div>
                        </form>
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