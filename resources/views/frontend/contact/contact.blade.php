@extends('frontend.master')

@section('mainContent')

<div id="content" class="site-content" style="margin-top: 41px;">
    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <div class="contact-box text-center">
                <div class="container">
                    <div class="row d-flex justify-content-center">
	                    <div class="col-md-4">
	                        <div class="single-contact-box rounded">
	                            <div class="contact-icon-box mb-3">
	                                <i class="fa fa-phone"></i>
	                            </div>
	                            <div class="contact-meta">
	                                <h3 class="mb-3"><?php echo @$information->mobile1;  ?></h3>
	                                <p class="text-black-50">Call us any time from 10:00 AM till 7:00 PM</p>
	                            </div>
	                        </div>
	                    </div>

	                    <div class="col-md-4">
	                        <div class="single-contact-box rounded">
	                            <div class="contact-icon-box mb-3">
	                                <i class="fa fa-envelope-o"></i>
	                            </div>
	                            <div class="contact-meta">
	                                <h3 class="mb-3"><a >[<?php echo @$information->siteEmail1;  ?>]</a></h3>
	                                <p class="text-black-50">Email us any time, we usually reply within 24 hours.</p>
	                            </div>
	                        </div>
	                    </div>
                    
                        <div class="col-md-4">
	                        <div class="single-contact-box border rounded">
	                            <div class="contact-icon-box  mb-3">
	                                <i class="fa fa-building-o"></i>
	                            </div>
	                            <div class="contact-meta">
	                                <h3 class="mb-3"><?php echo @$information->siteAddress1;  ?>
	                                	<?php echo @$information->siteAddress2;  ?></h3>
	                                <p class="text-black-50">Schedule your meeting before visiting.</p>
	                            </div>
	                        </div>
                    	</div>
                    
                    </div><!--row-->
                </div><!--container-->
            </div>

            <div class="mb-2 mb-md-5"></div>
            <div class="contact-map"></div>

        </main><!-- #main -->
    </div><!-- #primary -->
            
</div><!-- #content -->

@endsection

