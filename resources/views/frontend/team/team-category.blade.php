@extends('frontend.master')

@section('mainContent')

<style type="text/css">
	.title-2,.currentMenu,.sidebar-title{
		text-transform: uppercase;
	}
	.pad15 img{
		margin: 0 auto;
    	display: inherit;
	}
</style>
	<div class="services-details-section content-area-2" style="margin-top: 10px;">
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-12 col-md-12">
	            	<h4 class="categoryTitle" style="text-align: center;">{{@$categories->name}}</h4>
	            </div>
	        </div>
	        <div class="row">
	        	@foreach ($category_members as $category)
	        	<div class="col-lg-3 col-6 col-md-4">
	        		<div class="teamCategoryMemberBlock">
	        			<a class="teamCategoryLink" href="{{route('team.details',$category->id)}}">
		        		@if(file_exists($category->image))
		        		<img class="teamCategoryImage" src="{{asset('/'.$category->image)}}">
		        		@else
		        		<img class="teamCategoryImage" src="{{asset('/public/frontend/no-image.png')}}">
		        		@endif
		        		</a>
		        		<a class="teamCategoryLink" href="{{route('team.details',$category->id)}}">
		        		<h6 class="teamCategoryName">{{@$category->name}}</h6>
		        	</a>
		        		<h6 class="teamCategoryDesignation">{{@$category->designation}}</h6>
	        		</div>
	        	</div>
	        	@endforeach
	        </div>
	    </div>
	</div>
@endsection

