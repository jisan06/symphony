<style type="text/css">
  .slider_top{
    /*background: #009900;*/
    margin-bottom: 10px;
    color: #333;
    /*margin-top: 7px;*/
  }
  .contact_top_section{
    padding: 4px 0px 0px 0px;
  }
  .top_title{
    font-size: 11px;
    text-transform: uppercase;
    font-family: calibari;
    color: #333;
  }
  .contact_top_table td{
    font-size: 14px;
  }
  .contact_top_social{
    text-align: center;
  }

  .contact_top_social ul{
    
  }

  .contact_top_social ul li{
    display: inline-block;
    padding: 5px 4px;
    font-size: 14px;
  }

  .slider_top_images{
    float: right;
  }

  .slider_top_images img{
    height: 53px;
  }

  /*style for social link and icon*/
  .fa-envelope{

  }
  .email{
    color: #333;
  }
  .fa-phone{
    font-size: 17px;
  }
  .facebook{
    /*color: #3b589e !important;*/
    color: #333 !important;
  }
  .twitter{
    /*color: #56d7fe !important;*/
    color: #333 !important;
  }
  .linkedin{
    /*color: #1c82ca !important;*/
    color: #333 !important;
  }
  .skype{
    /*color: #00aff0;*/
    color: #333 !important;
  }
  .google_plus{
    /*color: #db4a39;*/
    color: #333 !important;
  }
  .youtube{
    /*color: #fb3958 !important; */
    color: #333 !important;
  }

  .newDiv{
    display: inline-block;
  }

  .newDiv h6{
    font-size: 14px;
    color: #333;
    text-align: center;
  }

  .newDiv p{
    color: #333;
    margin-bottom: 0px;
    font-size: 13px;
  }
</style>
<div class="row slider_top">
  <div class="col-md-6 col-sm-4 col-12">
    <div class="contact_top_section">
      <div>
        <div class="newDiv">
          <h6>Phone</h6>
          <p>{{$information->mobile1}}</p>
        </div>

        <div class="newDiv" style="margin-left: 13px;">
          <h6>Mobile</h6>
          <p>{{$information->mobile2}}</p>
        </div>

        <div class="newDiv" style="margin-left: 13px;">
          <h6>Email</h6>
          <p>{{$information->siteEmail1}}</p>
        </div>

        {{-- <table class="contact_top_table">
          <tr>
            <td><i class="fa fa-envelope"></i></td>
            <td><a class="email" href="mailto:{{$information->siteEmail1}}">{{$information->siteEmail1}}</a></td>
          </tr>
          <tr>
            <td><i class="fa fa-phone"></i></td>
            <td>{{$information->mobile1}}</td>
          </tr>
        </table> --}}
      </div>
    </div>
    
  </div>

  <div class="col-md-3 col-sm-4 col-12">
    <div class="contact_top_section">
      <h5 class="text-center top_title">Follow Us</h5>
      <div class="contact_top_social">
        <ul>
            <?php if($socialLink->facebook){ ?>
            <li><a href="{{$socialLink->facebook}}" class="facebook"><i class="fa fa-facebook"></i></a></li>
            <?php } ?>

            <?php if($socialLink->twitter){ ?>
            <li><a href="{{$socialLink->twitter}}" class="twitter"><i class="fa fa-twitter"></i></a></li>
            <?php } ?>

            <?php if($socialLink->linkdin){ ?>
            <li><a href="{{$socialLink->linkdin}}" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
            <?php } ?>

            <?php if($socialLink->skype){ ?>
            <li><a href="{{$socialLink->skype}}" class="skype"><i class="fa fa-skype"></i></a></li>
            <?php } ?>
            <?php if($socialLink->google){ ?>
            <li><a href="{{$socialLink->google}}" class="google_plus"><i class="fa fa-google-plus"></i></a></li>
            <?php } ?>

            <?php if($socialLink->youtube){ ?>
            <li><a href="{{$socialLink->youtube }}" class="youtube"><i class="fa fa-youtube"></i></a></li>
            <?php } ?>
        </ul>
      </div>
    </div>
  </div>

  <div class="col-md-3 col-sm-4 col-12">
    <div class="contact_top_section">
      <div class="slider_top_images">
        <img src="{{ asset('/public/frontend/assets/img/slider_top/nrb.jpg') }}">
        <img src="{{ asset('/public/frontend/assets/img/slider_top/basis.jpg') }}">
      </div>
    </div>
  </div>
</div>
