<!-- partner start -->
<div class="container partner">
    <div class="row">
        <div class="main-title" style="width: 100%;">
            <h1 style="text-align: center;"><span>{{$clientTitle->firstHomeTitle}}</span> {{$clientTitle->secondHomeTitle}}</h1>
        </div>
        <div class="multi-carousel" data-items="1,3,5,6" data-slide="1" id="multiCarousel"  data-interval="1000">
            <div class="multi-carousel-inner">
                <?php 
                    foreach ($clientAll as $client) {
                ?>
                <div class="item">
                    <div class="pad15">
                        <img src="{{ asset($client->image) }}" alt="brand">
                        <h5 class="partner">{{$client->name}}</h5>
                    </div>
                </div>
                <?php } ?>
            </div>
            <a class="multi-carousel-indicator leftLst" aria-hidden="true">
                <i class="fa fa-angle-left"></i>
            </a>
            <a class="multi-carousel-indicator rightLst" aria-hidden="true">
                <i class="fa fa-angle-right"></i>
            </a>
        </div>
    </div>
</div>
<!-- partner end -->