<script src="{{ asset("public/frontend") }}/assets/js/jquery-2.2.0.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/popper.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/bootstrap.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/flickty_package.min.js"></script>
  <!-- Sweet-Alert  -->
<script src="{{ asset('/public/admin-elite/assets/node_modules/sweetalert/sweetalert.min.js') }}"></script>

<!-- REVOLUTION slider JS FILES -->
  <script type="text/javascript" src="{{ asset("public/frontend") }}/assets/rev-slider/js/jquery.themepunch.tools.min.js"></script>
  <script type="text/javascript" src="{{ asset("public/frontend") }}/assets/rev-slider/js/jquery.themepunch.revolution.min.js"></script>


  <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->  
  <script type="text/javascript" src="{{ asset("public/frontend") }}/assets/rev-slider/js/extensions/revolution.extension.actions.min.js"></script>
  <script type="text/javascript" src="{{ asset("public/frontend") }}/assets/rev-slider/js/extensions/revolution.extension.carousel.min.js"></script>
  <script type="text/javascript" src="{{ asset("public/frontend") }}/assets/rev-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
  <script type="text/javascript" src="{{ asset("public/frontend") }}/assets/rev-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
  <script type="text/javascript" src="{{ asset("public/frontend") }}/assets/rev-slider/js/extensions/revolution.extension.navigation.min.js"></script>
  <script type="text/javascript" src="{{ asset("public/frontend") }}/assets/rev-slider/js/extensions/revolution.extension.parallax.min.js"></script>
  <script type="text/javascript" src="{{ asset("public/frontend") }}/assets/rev-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
  <script type="text/javascript" src="{{ asset("public/frontend") }}/assets/rev-slider/js/extensions/revolution.extension.video.min.js"></script>

<script src="{{ asset("public/frontend") }}/assets/js/jquery.selectBox.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/rangeslider.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/jquery.magnific-popup.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/jquery.filterizr.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/wow.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/backstretch.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/jquery.countdown.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/jquery.scrollUp.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/particles.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/typed.min.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/jquery.mb.YTPlayer.js"></script>
<script src="{{ asset("public/frontend") }}/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0N5pbJN10Y1oYFRd0MJ_v2g8W2QT74JE"></script>
<script src="{{ asset("public/frontend") }}/assets/js/ie-emulation-modes-warning.js"></script>
<!-- Custom JS Script -->
<script  src="{{ asset("public/frontend") }}/assets/js/custom.js"></script>
<script  src="{{ asset("public/frontend") }}/assets/js/app.js"></script>
<script  src="{{ asset("public/frontend") }}/assets/js/flickty_custom.js"></script>

<script type="text/javascript">
    var tpj=jQuery;
    
    var revapi1078;
    tpj(document).ready(function() {
      if(tpj("#rev_slider_1078_1").revolution == undefined){
        revslider_showDoubleJqueryError("#rev_slider_1078_1");
      }else{
        revapi1078 = tpj("#rev_slider_1078_1").show().revolution({
          sliderType:"standard",
jsFileLocation:"/{{ asset("public/frontend") }}/assets/rev-slider/js/",
          sliderLayout:"fullscreen",
          dottedOverlay:"none",
          delay:9000,
          navigation: {
            keyboardNavigation:"off",
            keyboard_direction: "horizontal",
            mouseScrollNavigation:"off",
            mouseScrollReverse:"default",
            onHoverStop:"off",
            touch:{
              touchenabled:"on",
              swipe_threshold: 75,
              swipe_min_touches: 1,
              swipe_direction: "horizontal",
              drag_block_vertical: false
            }
            ,
            arrows: {
              style:"metis",
              enable:true,
              hide_onmobile:true,
              hide_under:600,
              hide_onleave:true,
              hide_delay:200,
              hide_delay_mobile:1200,
              //tmp:'<div class="tp-title-wrap">    <div class="tp-arr-imgholder"></div> </div>',
              left: {
                h_align:"left",
                v_align:"center",
                h_offset:30,
                v_offset:0
              },
              right: {
                h_align:"right",
                v_align:"center",
                h_offset:30,
                v_offset:0
              }
            }
            ,
            bullets: {
              style: 'hades',
              tmp: '<span class="tp-bullet-image"></span>',
              enable:false,
              hide_onmobile:true,
              hide_under:600,
              //style:"metis",
              hide_onleave:true,
              hide_delay:200,
              hide_delay_mobile:1200,
              direction:"horizontal",
              h_align:"center",
              v_align:"bottom",
              h_offset:0,
              v_offset:30,
              space:5,
              
            }
          },
          viewPort: {
            enable:true,
            outof:"pause",
            visible_area:"80%",
            presize:false
          },
          responsiveLevels:[1240,1024,778,480],
          visibilityLevels:[1240,1024,778,480],
          gridwidth:[1240,1024,778,480],
          gridheight:[600,600,500,400],
          lazyType:"none",
          parallax: {
            type:"mouse",
            origo:"slidercenter",
            speed:2000,
            levels:[2,3,4,5,6,7,12,16,10,50,47,48,49,50,51,55],
            type:"mouse",
          },
          shadow:0,
          spinner: 'spinner2',
          stopLoop:"off",
          stopAfterLoops:-1,
          stopAtSlide:-1,
          shuffle:"off",
          autoHeight:"off",
          hideThumbsOnMobile:"off",
          hideSliderAtLimit:0,
          hideCaptionAtLimit:0,
          hideAllCaptionAtLilmit:0,
          debugMode:false,
          fallbacks: {
            simplifyAll:"off",
            nextSlideOnWindowFocus:"off",
            disableFocusListener:false,
          }
        });
      }
    }); /*ready*/
  </script> 

<script>
  $(document).ready(function(){
    $('.alert-success').fadeIn().delay(2000).fadeOut();
  });
</script>

