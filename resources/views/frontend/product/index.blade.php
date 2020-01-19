@extends('frontend.master')

@section('mainContent')
<?php
	use App\Menu;
	use App\Article;
?>
<style type="text/css">
    .blog-1 .blog-photo img {
        height: 190px;
    }
    .detail h5{
        text-align: center;
        text-transform: uppercase;
    }

    .mission_read_more{
        color: #089e13;
        text-transform: uppercase;
        font-weight: bold;
    }
</style>
	<div class="blog content-area-2" style="margin-bottom: 0px;">
	    <div class="container product">
	        <div class="main-title">
	            <h1><span>{{$product->firstHomeTitle}}</span> {{$product->secondHomeTitle}}</h1>
	        </div>
	        <div class="row">
	          <?php 
	            foreach ($productAll as $product) {
	            $otherMenu = Menu::where('id',@$product->menuId)->first();
	            $subMenuName = str_replace(' ', '-', @$otherMenu->menuName);
	            $menuLink = route('menu.content',['subMenuName'=>$subMenuName,'menuId'=>@$otherMenu->id]);
	         ?>
	            <div class="col-md-4" style="margin-bottom: 20px;">
	                <div class="blog-1">
	                    <div class="blog-photo">
	                        <a href="{{$menuLink}}">
	                            <img src="{{ asset($product->firstHomeImage) }}" class="img-fluid">
	                        </a>
	                    </div>
	                    <div class="detail">
	                        <h5>{{$product->firstHomeTitle}}</h5>
	                        <div style="height: 120px;">
	                            <?php echo str_limit($product->homeDescription,250); ?>
	                        </div>
	                        <a class="mission_read_more" href="{{$menuLink}}">Learn More</a>
	                    </div>
	                </div>
	            </div>
	        <?php } ?>
	        </div>
	    </div>
	</div>
@endsection

