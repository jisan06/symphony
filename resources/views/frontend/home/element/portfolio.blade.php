<div class="portfolio-area content-area-8">
    <div class="container-fluid">
        <div class="main-title">
            <h1><span>{{$portfolioTitle->firstHomeTitle}}</span> {{$portfolioTitle->secondHomeTitle}}</h1>
            <ul class="list-inline-listing filters filteriz-navigation">
                <li class="active btn filtr-button filtr" data-filter="all">All</li>
                <?php
                    foreach ($productAll as $product) {
                ?>
                <li data-filter="{{$product->id}}" class="btn btn-inline filtr-button filtr">{{$product->firstHomeTitle}}</li>
                <?php } ?>
            </ul>
        </div>
        <div class="row filter-portfolio">
            <div class="cars">
                <?php 
                    foreach ($portfolioAll as $portfolio) {
                ?>
                <div class="col-lg-3 col-md-4 col-sm-6 col-pad filtr-item" data-category="{{$portfolio->parentArticle}}">
                    <div class="property-box">
                        <div class="porfolioBlock">
                            <div class="property-thumbnail">
                                <a href="{{ route('portfolio.details',$portfolio->id) }}" class="property-img">
                                    <img src="{{ asset($portfolio->firstHomeImage) }}" alt="portfolio" class="img-fluid">
                                </a>
                                <div class="property-overlay">
                                    <a href="{{ route('portfolio.details',$portfolio->id) }}" class="overlay-link">
                                        <i class="fa fa-link"></i>
                                    </a>
                                    <div class="property-magnify-gallery">
                                        <a href="{{ asset($portfolio->firstHomeImage) }}" class="overlay-link">
                                            <i class="fa fa-search-plus"></i>
                                        </a>
                                       {{--  <a href="{{ asset($portfolio->firstHomeImage) }}" class="hidden"></a>
                                        <a href="{{ asset($portfolio->firstHomeImage) }}" class="hidden"></a> --}}
                                    </div>
                                </div>
                            </div>
                            <h5 class="productName"><a href="{{ route('portfolio.details',$portfolio->id) }}">{{$portfolio->firstHomeTitle}}</a>
                            </h5>
                            </div>
                    </div>
                </div>
               <?php } ?>
            </div>
        </div>
    </div>
</div>
