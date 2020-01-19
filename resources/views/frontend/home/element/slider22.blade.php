<!-- Fullscreen Slider Start -->
<style type="text/css">
    .tp-caption{
        opacity: 0.7 !important;
        /*margin-top: 600px !important;*/
        position: absolute;
        white-space: normal !important;
        padding-bottom: 13px !important;
    }
    .descriptionBlock{
       padding-left: 10px !important;
    }
    .rev_redraw_on_blurfocus{
      height: 94% !important;
    }

    .readMore{
      width: 109px;
      max-width: none !important;
    }

    .readMore a{
      font-size: 20px;
      background: #e20d0d;
      color: #fff;
      padding: 6px;
      border-radius: 11px;
    }

    .description p{
      font-size: 20px;
      color: #fff !important;
    }

    .description p>span{
      color: #fff !important;
    }
    
</style>
  <div class="slider bg-navy-blue">
    <div id="rev_slider_1078_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container slider" data-alias="classic4export" data-source="gallery" style="margin:0px auto;background-color:transparent;padding:0px;margin-top:0px;margin-bottom:0px;"> 
      <!-- START REVOLUTION SLIDER 5.4.1 fullwidth mode -->
      <div id="rev_slider_1078_1" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.4.1">
        <ul>
          <?php
            $i = 0;
            foreach ($sliders as $slider) {
            $i++;
            if($i%2!=0){
          ?>
          <li 
            data-index="rs-82" 
            data-transition="fade" 
            data-slotamount="default" 
            data-hideafterloop="0" 
            data-hideslideonmobile="off"
            data-easein="Power4.easeOut"
            data-easeout="Power4.easeOut" 
            data-masterspeed="1000"
            data-thumb="../../assets/images/waterfal-100x50.html"
            data-rotate="0"
            data-saveperformance="off"
            data-title="Slide"
            data-param1=""
            data-param2=""
            data-param3=""
            data-param4=""
            data-param5=""
            data-param6=""
            data-param7=""
            data-param8=""
            data-param9=""
            data-param10=""
            data-description=""
            data-slicey_shadow="0px 0px 50px 0px transparent"
            style="position: relative;"
          >
            <!-- MAIN IMAGE -->
            <img src="{{ asset($slider->image) }}"  alt="" 
              data-bgposition="center center"
              data-kenburns="on"
              data-duration="7000"
              data-ease="Linear.easeNone"
              data-scalestart="100"
              data-scaleend="150"
              data-rotatestart="0"
              data-rotateend="0"
              data-blurstart="0"
              data-blurend="0"
              data-offsetstart="0 0"
              data-offsetend="0 0"
              class="rev-slidebg"
              data-no-retina
            >
            <!-- LAYERS -->        

            <!-- LAYER NR. 1 -->
            <div class="tp-caption tp-resizeme NotGeneric-Title descriptionBlock" 
                  data-blendmode=”color-dodge“
                  data-x="['center','center','center','center']" 
                  data-hoffset="['0','0','0','0']" 
                  data-y="['middle','middle','middle','middle']" 
                  data-voffset="['-70','-70','-70','-70']" 
                  data-lineheight="['80','70','70','40']"
                  data-width="100%"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-type="text" 
                  
                  data-responsive_offset="on" 
                  data-frames='[{"delay":200,"speed":1000,"frame":"0","from":"z:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0.8;","ease":"Power3.easeInOut"}]'
                  data-textAlign="['left','left','left','left']"
                  
                   style="background-color: rgb(97, 96, 94);font-size: 32px;">
                   <span style="font-size: 37px">{{$slider->firstTitle}}</span>

                    <span style="float: right;padding-right: 11px;margin-top: -30px;"><a href="" style="color: rgb(5, 249, 249);font-size: 18px;">Read More</a></span>
                   <br>
                   <span class="description" style="font-size: 19px;color: #fff;"><?php echo $slider->description; ?></span>
            </div>

             
          </li>
          <?php }else{ ?>

              <li 
             data-index="rs-3045" data-transition="zoomout" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="{{ asset("public/frontend") }}/rev-slider/assets/images/datcolor-100x50.jpg"  data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off"  data-title="Intro" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description=""> 
            <!-- MAIN IMAGE --> 
            <img src="{{ asset($slider->image) }}"  alt="" 
              data-bgposition="center center"
              data-kenburns="on"
              data-duration="7000"
              data-ease="Linear.easeNone"
              data-scalestart="100"
              data-scaleend="150"
              data-rotatestart="0"
              data-rotateend="0"
              data-blurstart="0"
              data-blurend="0"
              data-offsetstart="0 0"
              data-offsetend="0 0"
              class="rev-slidebg"
              data-no-retina>
            <!-- LAYERS -->        

            <!-- LAYER NR. 1 -->
            <div class="tp-caption tp-resizeme NotGeneric-Title descriptionBlock" 
                  data-blendmode=”color-dodge“
                  data-x="['center','center','center','center']" 
                  data-hoffset="['0','0','0','0']" 
                  data-y="['middle','middle','middle','middle']" 
                  data-voffset="['-70','-70','-70','-70']" 
                  data-lineheight="['80','70','70','40']"
                  data-width="100%"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-type="text" 
                 
                  data-responsive_offset="on" 
                  data-frames='[{"delay":200,"speed":1000,"frame":"0","from":"z:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0.8;","ease":"Power3.easeInOut"}]'
                  data-textAlign="['left','left','left','left']"
                  
                   style="background-color: rgb(97, 96, 94);font-size: 32px;">
                   <span style="font-size: 37px">{{$slider->firstTitle}}</span>

                   <span style="float: right;padding-right: 11px;margin-top: -30px;"><a href="" style="color: rgb(5, 249, 249);font-size: 18px;">Read More</a></span>
                   <br>
                   <span class="description" style="font-size: 19px;color: #fff;"><?php echo $slider->description; ?></span> 
            </div>

          </li>
          <?php } } ?>
         
        {{--   <li 
             data-index="rs-3045" data-transition="zoomout" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-thumb="{{ asset("public/frontend") }}/rev-slider/assets/images/datcolor-100x50.jpg"  data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off"  data-title="Intro" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description=""> 
            <!-- MAIN IMAGE --> 
            <img src="{{ asset("public/frontend") }}/assets/img/banner_slider_2.jpg"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>
            <!-- LAYERS -->        

            <!-- LAYER NR. 1 -->
            <div class="tp-caption tp-resizeme NotGeneric-Title" 
                  data-blendmode=”color-dodge“
                  data-x="['center','center','center','center']" 
                  data-hoffset="['0','0','0','0']" 
                  data-y="['middle','middle','middle','middle']" 
                  data-voffset="['-70','-70','-70','-70']" 
                  data-lineheight="['80','70','70','40']"
                  data-width="100%"
                  data-height="none"
                  data-whitespace="nowrap"
                  data-type="text" 
                  data-paddingbottom="[10,10,10,10]"
                  data-responsive_offset="on" 
                  data-frames='[{"delay":200,"speed":1000,"frame":"0","from":"z:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0.8;","ease":"Power3.easeInOut"}]'
                  data-textAlign="['center','center','center','center']"
                  
                   style="background-color: rgb(97, 96, 94);font-size: 32px;">
                   <span style="font-size: 37px">Ready for Any Obstacle</span>
                   <br>
                   <p style="font-size: 19px;color: #fff;">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor . Lorem ipsum resolution solve</p>
            </div>

              <!-- LAYER NR. 12 -->
              <div class="tp-caption tp-resizeme btn-theme bg-navy-blue rev-btn readMore" 
                id="slide-82-layer-5" 
                data-x="['center','center','center','center']" 
                data-hoffset="['0','0','0','0']" 
                data-y="['middle','middle','middle','middle']" 
                data-voffset="['140','140','140','140']" 
                data-width="none"
                data-height="none"
                data-whitespace="nowrap"

                data-type="text" 
                data-responsive_offset="on" 

                data-frames='[{"delay":750,"speed":1000,"frame":"0","from":"z:0;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                data-textAlign="['inherit','inherit','inherit','inherit']"

                data-paddingtop="[0,0,0,0]"
                data-paddingright="[30,30,30,30]"
                data-paddingbottom="[5,5,5,5]"
                data-paddingleft="[30,30,30,30]"

                data-fontsize="['14','14','14','14']"
                data-lineheight="['16','16','16','16']"

                >Read More <i class="icofont-rounded-right"></i>
            </div>
          </li> --}}
         
        </ul>
        <div class="tp-bannertimer tp-bottom" style="height: 7px; background-color: rgba(255, 255, 255, 0.25);"></div>
      </div>
    </div>
  </div>
  <!-- Fullscreen Slider End -->


