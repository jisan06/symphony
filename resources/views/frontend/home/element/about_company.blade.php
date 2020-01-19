<!-- Managment area start -->
<div class="managment-area-2 content-area-10"{{--  style="display: block;margin-top: -105px;" --}}>
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-5 {{-- offset-lg-1 --}}">
                    <div class="managment-slider">
                        <div id="carouselExampleIndicators-managment" class="carousel slide" data-ride="carousel">
                            
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100 img-fluid" src="{{ asset($aboutCompany->image) }}" alt="First slide">
                                </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-7 col-md-7">
                <div class="managment-info">
                    <h1><span>{{$aboutCompany->title1}}</span> {{$aboutCompany->title2}}</h1>
                    <div class="managment-border-"></div>
                    <div style="text-align: justify;"><?php echo $aboutCompany->description ?></div>
                
                </div>
            </div>
            
        </div>
    </div>
</div>
<!-- Managment area end -->