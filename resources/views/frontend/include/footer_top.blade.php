<div class="row">
    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
        <div class="footer-item">
            <h4>Contact Us</h4>
            <ul class="contact-info">
                <li>
                    {{$information->siteAddress1}}
                    {{$information->siteAddress2}}
                </li>
                <li>
                    Email: <a href="mailto:{{$information->siteEmail1}}">{{$information->siteEmail1}}</a>
                    <a style="margin-left: 36px;" href="mailto:{{$information->siteEmail2}}">{{$information->siteEmail2}}</a>
                </li>
                <li>
                    Phone: <a>{{$information->mobile1}}</a> <br>
                     <a style="margin-left: 44px;">{{$information->mobile2}}</a>
                </li>
               
            </ul>
            <ul class="social-list clearfix">
                <?php if($socialLink->facebook){ ?>
                <li><a href="{{$socialLink->facebook}}" class="facebook"><i class="fa fa-facebook"></i></a></li>
                <?php } ?>

                <?php if($socialLink->twitter){ ?>
                <li><a href="{{$socialLink->twitter}}" class="twitter"><i class="fa fa-twitter"></i></a></li>
                <?php } ?>

                <?php if($socialLink->linkdin){ ?>
                <li><a href="{{$socialLink->linkdin}}" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                <?php } ?>

                <?php if($socialLink->skype){ ?>
                <li><a href="{{$socialLink->skype}}" class="linkedin"><i class="fa fa-skype"></i></a></li>
                <?php } ?>
                <?php if($socialLink->google){ ?>
                <li><a href="{{$socialLink->google}}" class="linkedin"><i class="fa fa-google-plus"></i></a></li>
                <?php } ?>

                <?php if($socialLink->youtube){ ?>
                <li><a href="{{$socialLink->youtube }}" class="instagram"><i class="fa fa-youtube"></i></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>

    
    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
        <div class="recent-posts footer-item">
            <h4>Recent Posts</h4>
            <?php
                foreach ($globalBlogs as $blogGlobal) {
                $blogDate = date("d M Y", strtotime($blogGlobal->created_at));
            ?>
            <div class="media mb-4">
                <a class="pr-3" href="{{ route('blog.details',$blogGlobal->id) }}">
                    <img src="{{ asset('/').$blogGlobal->firstHomeImage }}" alt="recent-portfolio">
                </a>
                <div class="media-body align-self-center recentPost">
                    <p><a href="{{ route('blog.details',$blogGlobal->id) }}"><?php echo $blogGlobal->firstHomeTitle; ?></a></p>
                    <p class="recentPostDate"><i class="fa fa-calendar"></i>{{$blogDate}}</p>
                    <p style="float: right;"><a href="{{ route('blog.details',$blogGlobal->id) }}">View Details</a></p>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>

     <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
        <div class="recent-posts footer-item">
            <h4>Feedback</h4>
            <div class="contact-form">
                <!-- Form Begins -->
                <div class="contact-form-message"></div>
                    <form role="form" action="" method="POST" class="contactForm" name="contactForm">
                        {{ csrf_field() }}
                        <!-- Field 1 -->
                        <div class="input-text form-group">
                            <input type="text" name="contactName" class="form-control contactName" placeholder="Name" required>
                        </div>
                        <div class="input-email form-group">
                             <input type="text" name="contactPhone" class="form-control contactPhone" placeholder="Phone Number" required>
                        </div>
                        <!-- Field 2 -->
                        <div class="input-email form-group">
                            <input type="email" name="contactEmail" class="form-control contactEmail" placeholder="Email" required>
                        </div>
                        <!-- Field 3 -->
                        <div class="input-email form-group">
                            <input type="text" name="contactTitle" class="form-control contactTitle" placeholder="Subject" required>
                        </div>
                        <!-- Field 4 -->
                        <div class="textarea-message form-group">
                            <textarea class="form-control contactMessage" name="contactMessage" placeholder="Write message" required></textarea>
                        </div>
                        <!-- Button -->
                        {{-- <p style="cursor:pointer" id="preview_form" class="btn btn-default">Send Now <i class="icon-paper-plane"></i></p> --}}
                        <button type="submit" class="btn btn-default contactFormButton" style="cursor: pointer;">Send <i class="icon-paper-plane"></i></button>
                    </form>
            </div>
        </div>
    </div>


 {{--    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
        <div class="footer-item clearfix">
            <h4>Subscribe</h4>
            <div class="Subscribe-box">
                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.</p>
                <form action="#" method="GET">
                    <p>
                        <input type="text" class="form-contact" name="email" placeholder="Enter Address">
                    </p>
                    <p>
                        <button type="submit" name="submitNewsletter" class="btn btn-block btn-color">
                            Subscribe
                        </button>
                    </p>
                </form>
            </div>
        </div>
    </div> --}}
</div>