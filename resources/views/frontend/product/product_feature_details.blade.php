@extends('frontend.master')

@section('mainContent')
<?php
	use App\Menu;
	use App\productFeatureDetails;
?>
<style type="text/css">
	.detail h4{
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
	
</style>
<div class="blog content-area-2">
    <div class="container product">
        <div class="main-title">
        	<div class="row">
        		<div class="col-md-12 detail">
        			<h4>{{@$productFeatureDetails->firstInnerTitle}}</h4>
        		</div>
        	</div>
        	<div style="margin-top: 10px"></div>
        	<div class="row">
        		<div class="col-md-7">
        			<div class="detail">
                       @php
                       		echo $productFeatureDetails->innerDescription;
                       @endphp
                    </div>
        		</div>
        		<div class="col-md-5">
        			<div class="blog-photo" style="height: 90px;">
        				@php
        					if(file_exists($productFeatureDetails->firstInnerImage)){
        						$image = asset('/'.$productFeatureDetails->firstInnerImage);
        					}else{
        						$image = $noImage;
        					}
        				@endphp
	                	<img src="{{ $image }}" class="img-fluid" style="height: 100px;">	
                    </div>
        		</div>
        	</div>
        </div>
    </div>
</div>
@endsection

