@extends('frontend.master')

@section('mainContent')
<?php
	use App\Menu;
	use App\Article;
	use App\Portfolio;
	use App\TeamCategory;
	use App\Team;
	use App\Partner;
	$menuId = $menuDetails->id;
	$services = Article::where('id',11)->first();
    $serviceAll = Article::where('parentArticle',11)->get();
    $productAll = Article::where('parentArticle',5)->where('articleStatus',1)->get();
    $portfolioTitle = Article::where('articleStatus',1)->where('id',28)->first();
    $portfolioAll = Portfolio::where('articleStatus',1)->get();
    $teamTitle = Article::where('articleStatus',1)->where('id',3)->first();
    $teamCategories = TeamCategory::orderBy('orderBy','ASC')->where('status',1)->get();
    $teamAll= Team::orderBy('orderBy','ASC')->where('status',1)->get();
    $products = Article::where('id',5)->first();
    $productAll = Article::where('parentArticle',5)->where('articleStatus',1)->get();
    $clientTitle = Article::where('articleStatus',1)->where('id',30)->first();
    $clientAll= Partner::orderBy('orderBy','ASC')->where('status',1)->get();
    $contactTitle = Article::where('articleStatus',1)->where('id',31)->first();
?>
<style type="text/css">
	.title-2,.currentMenu,.sidebar-title{
		text-transform: uppercase;
	}
	.pad15 img{
		margin: 0 auto;
    	display: inherit;
	}
</style>
<?php if($menuId == 1){ ?>
	<?php
	$article = Article::where('menuId',$menuId)->first();
	$otherArticlesList = Menu::where('parent',@$menuId)->where('menuStatus',1)->get();
?>
	<div class="services-details-section content-area-2 innerMenuSection">
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-8 col-md-12">
	                <!-- Services details start -->
	                <div class="services-details">
	                    <div class="photo">
	                    	@if(file_exists(@$article->firstInnerImage))
	                        <img src="{{asset('/').@$article->firstInnerImage}}" alt="services" class="img-fluid">
	                        @endif
	                    </div>
	                    <div class="detail">
	                        <h3 class="title-2">
	                           {{@$article->firstInnerTitle}}
	                        </h3>
	                        <div style="text-align: justify;"><?php echo @$article->innerDescription; ?></div>
	                        <br>
	                    </div>
	                </div>
	                <!-- Services details end -->
	            </div>
	            <div class="col-lg-4 col-md-12">
	                <div class="sidebar mb-30">
	                   
	                    <!-- Categories start -->
	                    <div class="widget categories">
	                        <h5 class="sidebar-title">{{@$menuDetails->menuName}}</h5>
	                        <ul>
	                        	<?php 
	                        		foreach ($otherArticlesList as $otherArticles) {
	                        		$subMenuName = str_replace(' ', '-', @$otherArticles->menuName);
	                        		$menuLink = route('menu.content',['subMenuName'=>$subMenuName,'menuId'=>@$otherArticles->id]);
	                        	?>
	                            <li><a class="currentMenu" href="{{@$menuLink}}">{{@$otherArticles->menuName}}</a></li>
	                          <?php } ?>
	                        </ul>
	                    </div>
	                    
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
<?php }elseif($menuId == 2){ ?>
	<div class="portfolio-area content-area-2 innerMenuSection">
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
	               {{--  <li data-filter="2" class="btn btn-inline filtr-button filtr">VAT</li>
	                <li data-filter="3" class="btn btn-inline filtr-button filtr">HRM</li>
	                <li data-filter="3" class="btn btn-inline filtr-button filtr">Web Applications</li> --}}
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

<?php }elseif($menuId == 3){ ?>
<div class="portfolio-area content-area-8">
    <div class="container-fluid">
        <div class="main-title">
            <h1><span>{{$teamTitle->firstHomeTitle}}</span> {{$teamTitle->secondHomeTitle}}</h1>
                <ul class="list-inline-listing filters filteriz-navigation">
                    <li class="teamCategoryActive btn filter-button-team" data-filter-team="allTeam">All</li>
                    <?php
                        foreach ($teamCategories as $category) {
                    ?>
                    <li data-filter-team="tTeam_{{$category->id}}" class="btn btn-inline filter-button-team">{{$category->name}}</li>
                    <?php } ?>
                </ul>
        </div>
        <div class="row">
            <?php
                foreach ($teamAll as $team) {    
            ?>
                <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-6 col-6 filter-team tTeam_{{$team->teamCategory}}">
                    <div class="teamSection">
                        <a href="{{route('team.details',$team->id)}}">
                        <div class="row">
                            <div class="col-md-12">
                                <span>{{$team->name}}</span>
                                <br>
                                <span class="teamDesignation">{{$team->designation}}</span>
                            </div>
                        </div>
                       
                        </a>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>


<?php }elseif($menuId == 5){ ?>
	<!-- Blog start -->
	<div class="blog content-area-2 innerMenuSection">
	    <div class="container" {{-- style="padding-left: 0px !important;" --}}>
	        <div class="main-title">
	            <h1><span>{{$products->firstHomeTitle}}</span> {{$products->secondHomeTitle}}</h1>
	        </div>

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

<?php }elseif($menuId == 9){ ?>
	<div class="services content-area-2 innerMenuSection">
		    <div class="container">
		        <div class="main-title">
		            <h1><span>{{$clientTitle->firstHomeTitle}}</span> {{$clientTitle->secondHomeTitle}}</h1>
		           <div><?php echo $clientTitle->homeDescription; ?></div>
		        </div>
		        <div class="row">
		            <?php
		            	foreach ($clientAll as $client) {
		            ?>
		            <div class="col-lg-3 col-md-6 col-sm-6">
			            <div class="pad15">
	                        <img src="{{ asset($client->image) }}" alt="brand">
	                        <a href="{{ route('client.details',$client->id) }}"><h5 class="partner">{{$client->name}}</h5></a>
	                    </div>
		            </div>
		            <?php } ?>
		        </div>
		    </div>
		</div>

<?php }elseif($menuId == 10){ ?>
	<div class="contact-1 content-area-7">
	    <div class="container">
	        <div class="main-title">
	            <h1><span>{{$contactTitle->firstInnerTitle}}</span> {{$contactTitle->secondInnerTitle}}</h1>
	            <?php echo $contactTitle->innerDescription ?>
	        </div>
	        <?php
	              if (isset($msg)) {
	                echo"<div style='display:inline-block;width: auto;' class='alert alert-success'>" .$msg."</div>";
	              }
	        ?>
            @if( count($errors) > 0 )  
            <div style="display:inline-block;width: auto;" class="alert alert-danger">{{ $errors->first() }}
            </div>
            @endif

	        <div class="row">
	            <div class="col-lg-7 col-md-7 col-md-7">
	                <form  method="POST" enctype="multipart/form-data" role="form" class="contactForm" name="contactForm">
	                	{{ csrf_field() }}
	                    <div class="row">
	                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
	                            <div class="form-group name">
	                                <input type="text" name="contactName" class="form-control contactName" placeholder="Name" required>
	                            </div>
	                        </div>
	                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
	                            <div class="form-group email">
	                                <input type="email" name="contactEmail" class="form-control contactEmail" placeholder="Email" required>
	                            </div>
	                        </div>
	                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
	                            <div class="form-group subject">
	                                <input type="text" name="contactTitle" class="form-control contactTitle" placeholder="Subject" required>
	                            </div>
	                        </div>
	                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
	                            <div class="form-group number">
	                                <input type="text" name="contactPhone" class="form-control contactPhone" placeholder="Phone Number" required>
	                            </div>
	                        </div>
	                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                            <div class="form-group">
	                                <textarea class="form-control contactMessage" name="contactMessage" placeholder="Write message" required></textarea>
	                            </div>
	                        </div>
	                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
	                            <div class="send-btn">
	                                <button type="submit" class="btn btn-color btn-md btn-message">Send Message</button>
	                            </div>
	                        </div>
	                    </div>
	                </form>
	            </div>

	            <div class="col-lg-5 offset-md-0 col-md-5">
	                <div class="contact-info">
	                    <h3>Contact Info</h3>
	                    <div class="media">
	                        <i class="fa fa-map-marker"></i>
	                        <div>
	                            <h5 class="mt-0">Office Address</h5>
	                            <p>{{$information->siteAddress1}}</p>
	                            <p>{{$information->siteAddress2}}</p>
	                        </div>
	                    </div>
	                    <div class="media">
	                        <i class="fa fa-phone"></i>
	                        <div>
	                            <h5 class="mt-0">Phone Number</h5>
	                            <p>{{$information->mobile1}}</p>
	                            <p>{{$information->mobile2}}</p>
	                            
	                        </div>
	                    </div>
	                    <div class="media mrg-btn-0">
	                        <i class="fa fa-envelope"></i>
	                        <div>
	                            <h5 class="mt-0">Email Address</h5>
	                            <a href="mailto:{{$information->siteEmail1}}">{{$information->siteEmail1}}</a>
	                            <a href="mailto:{{$information->siteEmail2}}">{{$information->siteEmail1}}</a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
<?php }elseif($menuId == 11){ ?>
	<div class="services content-area-2 innerMenuSection">
	    <div class="container">
	        <div class="main-title">
	            <h1><span>{{$services->firstHomeTitle}}</span> {{$services->secondHomeTitle}}</h1>
	           <div><?php echo $services->homeDescription; ?></div>
	        </div>
	        <div class="row">
	            <?php foreach ($serviceAll as $service) {
	            	$otherMenu = Menu::where('id',@$service->menuId)->first();
	                $subMenuName = str_replace(' ', '-', @$otherMenu->menuName);
	                $menuLink = route('menu.content',['subMenuName'=>$subMenuName,'menuId'=>@$otherMenu->id]);
	            ?>
	            <div class="col-lg-4 col-md-6 col-sm-6">
	                <div class="media services-info">
	                    <?php echo @$service->articleIcon; ?>
	                    <div class="media-body">
	                        <h5>{{@$service->firstHomeTitle}}</h5>
	                        <div><?php echo @$service->homeDescription; ?></div>
	                        <a class="btn btn-info mission_read_more" href="{{$menuLink}}">Read More</a>
	                    </div>
	                </div>
	            </div>
	            <?php } ?>
	        </div>
	    </div>
	</div>
<?php }else{ ?>
<?php
	$article = Article::where('menuId',$menuId)->first();
	$otherArticlesList = Article::where('parentArticle',@$article->parentArticle)->where(\DB::raw('articles.id'), '!=', $article->id)->get();
?>
	<!-- Services details section start -->
	<div class="services-details-section content-area-2 innerMenuSection">
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-8 col-md-12">
	                <!-- Services details start -->
	                <div class="services-details">
	                    <div class="photo">
	                    	@if(file_exists(@$article->firstInnerImage))
	                        <img src="{{asset('/').@$article->firstInnerImage}}" alt="services" class="img-fluid">
	                        @endif
	                    </div>
	                    <div class="detail">
	                        <h3 class="title-2">
	                           {{@$article->firstInnerTitle}}
	                        </h3>
	                        <div style="text-align: justify;"><?php echo @$article->innerDescription; ?></div>
	                        <br>
	                    </div>
	                </div>
	                <!-- Services details end -->
	            </div>
	            <div class="col-lg-4 col-md-12">
	                <div class="sidebar mb-30">
	                   
	                    <!-- Categories start -->
	                    <div class="widget categories">
	                        <h5 class="sidebar-title">{{@$menuDetails->menuName}}</h5>
	                        <ul>
	                        	<?php 
	                        		foreach ($otherArticlesList as $otherArticles) {
	                        			$otherMenu = Menu::where('id',@$otherArticles->menuId)->first();
	                        		$subMenuName = str_replace(' ', '-', @$otherMenu->menuName);
	                        		$menuLink = route('menu.content',['subMenuName'=>$subMenuName,'menuId'=>@$otherMenu->id]);
	                        	?>
	                            <li><a class="currentMenu" href="{{@$menuLink}}">{{@$otherMenu->menuName}}</a></li>
	                          <?php } ?>
	                        </ul>
	                    </div>
	                    
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
<?php } ?>

@endsection

