<div class="main-content">

    <!-- Section: inner-header -->
    <section class="inner-header divider parallax layer-overlay overlay-white-8" data-bg-img="mytheme/images/bg/bg6.jpg">
      <div class="container pt-60 pb-60">
        <!-- Section Content -->
        <div class="section-content">
          <div class="row">
            <div class="col-md-12 text-center">
              <h2 class="title">Contact</h2>
              <ol class="breadcrumb text-center text-black mt-10">
                <li><a href="#">Home</a></li>
                <li><a href="#">Pages</a></li>
                <li class="active text-theme-colored">Page Title</li>
              </ol>
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
            data-address="121 King Street, Melbourne Victoria 3000 Australia"
            data-popupstring-id="#popupstring1"
            class="map-canvas autoload-map"
            data-mapstyle="style2"
            data-height="400"
            data-latlng="-37.817314,144.955431"
            data-title="sample title"
            data-zoom="12"
            data-marker="mytheme/images/map-marker.png">
          </div>
          <div class="map-popupstring hidden" id="popupstring1">
            <div class="text-center">
              <h3>ThemeMascot Office</h3>
              <p>121 King Street, Melbourne Victoria 3000 Australia</p>
            </div>
          </div>
          <!-- Google Map Javascript Codes -->
          <script src="http://maps.google.com/maps/api/js?key=AIzaSyAYWE4mHmR9GyPsHSOVZrSCOOljk8DU9B4"></script>
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
                    <p>#405, Lan Streen, Los Vegas, USA</p>
                  </div>
                </div>
              </div>
              <div class="col-xs-12 col-sm-6 col-md-12">
                <div class="icon-box left media bg-deep p-30 mb-20"> <a class="media-left pull-left" href="#"> <i class="pe-7s-call text-theme-colored"></i></a>
                  <div class="media-body">
                    <h5 class="mt-0">Contact Number</h5>
                    <p>+325 12345 65478</p>
                  </div>
                </div>
              </div>
              <div class="col-xs-12 col-sm-6 col-md-12">
                <div class="icon-box left media bg-deep p-30 mb-20"> <a class="media-left pull-left" href="#"> <i class="pe-7s-mail text-theme-colored"></i></a>
                  <div class="media-body">
                    <h5 class="mt-0">Email Address</h5>
                    <p>supporte@yourdomin.com</p>
                  </div>
                </div>
              </div>
              <div class="col-xs-12 col-sm-6 col-md-12">
                <div class="icon-box left media bg-deep p-30 mb-20"> <a class="media-left pull-left" href="#"> <i class="fa fa-skype text-theme-colored"></i></a>
                  <div class="media-body">
                    <h5 class="mt-0">Make a Video Call</h5>
                    <p>ThemeMascotSkype</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-8">
            <h3 class="line-bottom mt-0 mb-30">Interested in discussing?</h3>
            <!-- Contact Form -->
            <form id="contact_form" name="contact_form" class="" action="http://kodesolution.com/demo/wxyz/w/echarity/v2.0/demo/includes/sendmail.php" method="post">

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

            <!-- Contact Form Validation-->
            <script type="text/javascript">
              $("#contact_form").validate({
                submitHandler: function(form) {
                  var form_btn = $(form).find('button[type="submit"]');
                  var form_result_div = '#form-result';
                  $(form_result_div).remove();
                  form_btn.before('<div id="form-result" class="alert alert-success" role="alert" style="display: none;"></div>');
                  var form_btn_old_msg = form_btn.html();
                  form_btn.html(form_btn.prop('disabled', true).data("loading-text"));
                  $(form).ajaxSubmit({
                    dataType:  'json',
                    success: function(data) {
                      if( data.status == 'true' ) {
                        $(form).find('.form-control').val('');
                      }
                      form_btn.prop('disabled', false).html(form_btn_old_msg);
                      $(form_result_div).html(data.message).fadeIn('slow');
                      setTimeout(function(){ $(form_result_div).fadeOut('slow') }, 6000);
                    }
                  });
                }
              });
            </script>
          </div>
        </div>
      </div>
    </section>
  </div>