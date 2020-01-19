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
	<div class="services-details-section content-area-2">
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-12 col-md-12">
	                <!-- Services details start -->
	                <div class="services-details">
	                    {{-- <div class="photo">
	                    	@if(file_exists(@$article->firstInnerImage))
	                        <img src="{{asset('/').@$article->firstInnerImage}}" alt="services" class="img-fluid">
	                        @endif
	                    </div> --}}
	                    <div class="detail">
	                        <h3 class="title-2">
	                           {{@$team->name}}
	                        </h3>
	                        <h3 class="title-2">
	                           {{@$team->designation}}
	                        </h3>

	                        <div style="text-align: justify;"><?php echo @$team->description; ?></div>
	                        <br>
	                    </div>
	                </div>
	                <!-- Services details end -->
	            </div>
	           
	        </div>
	    </div>
	</div>
@endsection

