<!-- Blog start -->
<?php
    use App\Menu;
?>
<div class="blog content-area-2">
    <div class="container product">
        <div class="main-title">
            <h1><span>{{$products->firstHomeTitle}}</span> {{$products->secondHomeTitle}}</h1>
        </div>
        {{-- <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="blog-1">
                    <div class="blog-photo">
                        <img src="{{ asset("public/frontend") }}/assets/img/blog/blog-3.jpg" alt="blog" class="img-fluid">
                        
                    </div>
                    <div class="detail">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 d-none d-xl-block d-lg-block">
                <div class="blog-1">
                    <div class="blog-photo">
                        <img src="{{ asset("public/frontend") }}/assets/img/blog/blog-2.jpg" alt="blog" class="img-fluid">
                    </div>
                    <div class="detail">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="blog-1">
                    <div class="blog-photo">
                        <img src="{{ asset("public/frontend") }}/assets/img/blog/blog.jpg" alt="blog" class="img-fluid">
                    </div>
                    <div class="detail">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard</p>
                    </div>
                </div>
            </div>
        </div> --}}

        <!-- Flickity HTML init -->
        <div class="carousel" id="carousel" data-flickity='{ "groupCells": false,"autoPlay": true,"cellAlign": "left", "contain": true,"freeScroll": true,"draggable": true ,"wrapAround": true,"pauseAutoPlayOnHover": true,"freeScrollFriction": 0.15,"selectedAttraction": 0.01}'>
            <?php 
            foreach ($productAll as $product) {
                $otherMenu = Menu::where('id',@$product->menuId)->first();
                $subMenuName = str_replace(' ', '-', @$otherMenu->menuName);
                $menuLink = route('menu.content',['subMenuName'=>$subMenuName,'menuId'=>@$otherMenu->id]);
             ?>
            <div class="carousel-cell col-md-3 col-sm-6">
                <div class="blog-1">
                    <div class="blog-photo">
                        <a href="{{$menuLink}}">
                        <img src="{{ asset($product->firstHomeImage) }}" class="img-fluid">
                        <h5 style="text-align: center;">{{$product->firstHomeTitle}}</h5>
                        </a>
                    </div>
                    <div class="detail">
                        <div style="height: 120px;"><?php echo str_limit($product->homeDescription,150); ?></div>
                        <a class="btn btn-info mission_read_more" href="{{$menuLink}}">Read More</a>
                    </div>
                </div>
            </div>
        <?php } ?>
        </div>

    </div>
</div>
<!-- Blog end -->