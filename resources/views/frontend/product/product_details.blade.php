@extends('frontend.master')

@section('mainContent')
<?php
	use App\Menu;
	use App\Article;
?>
<style type="text/css">
	.detail h3{
		text-align: center;
		color: #058805;
		margin-bottom: 15px;
	}
	.blog-1 .blog-photo img {
	    height: 80px;
	    width: auto;
	}
	.blog-1 .detail {
	    padding: 10px 20px 20px !important;
	}
	.blog-1 .detail p {
	    color: #333 !important;
	}
	.mission_read_more{
		color: #089e13;
		text-transform: uppercase;
		font-weight: bold;
	}
</style>
<div class="blog content-area-2">
    <div class="container product">
        <div class="main-title">
        	<div class="row">
        		<div class="col-md-1"></div>
        		<div class="col-md-10">
        			<div class="detail">
                        <h3>{{$product->firstInnerTitle}}</h3>
                        <div>
                        	<?php echo $product->innerDescription; ?>
                        </div>
                    </div>
        		</div>
        	</div>
        	<div style="margin-top: 30px"></div>
            <div class="row">
            	@foreach ($productFeatureList as $productFeature)
            	@php
	                $parenMenuName = str_replace(' ', '-', @$menuDetails->menuName);
	                $articleName = str_replace(' ', '-', @$productFeature->articleName);
	                $menuLink = route('prodeuctFeature.details',['parentMenu'=>$parenMenuName,'articleName'=>$articleName,'articleId'=>@$productFeature->id]);
            	@endphp
	                <div class="col-md-4">
	                	<div class="blog-1">
	                		<div class="blog-photo" style="height: 90px;">
		                		@php
		                			if(file_exists($productFeature->firstHomeImage)){
		                				$image = asset('/'.$productFeature->firstHomeImage);
		                			}else{
		                				$image = $noImage;
		                			}
		                		@endphp
		                        <img src="{{ $image }}" class="img-fluid">
	                    	</div>

	                    	<div class="detail">
		                        <h5 style="text-align: center;">{{$productFeature->firstHomeTitle}}</h5>
		                        <div style="height: 120px;">
		                        	<?php echo str_limit($productFeature->homeDescription,250); ?>
		                        </div>
		                        <a class="mission_read_more" href="{{@$menuLink}}">Learn More</a>
		                    </div>
	                	</div>
	            	</div>
            	@endforeach
            </div>
        </div>
    </div>
</div>
@endsection

