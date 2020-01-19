<!-- Managment area start -->
<div class="managment-area-2 content-area-10" style="display: none;">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-md-10">
                <div class="managment-info">
                     <h1><span>{{$welcomeMessege->firstHomeTitle}}</span> {{$welcomeMessege->secondHomeTitle}}</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-7 col-md-7">
                <div class="managment-info">
                    <div class="managment-border-"></div>
                    <div style="text-align: justify;"><?php echo $welcomeMessege->homeDescription ?></div>
                    
                </div>
            </div>
            <div class="col-lg-5 col-md-5 {{-- offset-lg-1 --}}">
                <div class="managment-slider">
                    <div id="carouselExampleIndicators-managment" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100 img-fluid" src="{{ asset($welcomeMessege->firstHomeImage) }}" alt="First slide">
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Managment area end -->