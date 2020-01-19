<div class="agent content-area-2">
    <div class="container">
        <div class="main-title">
            <h1><span>{{$teamTitle->firstHomeTitle}}</span> {{$teamTitle->secondHomeTitle}}</h1>
            <?php echo $teamTitle->homeDescription; ?>
        </div>
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="agent-2">
                    <div class="agent-photo">
                        <a href="team.html">
                            <img src="{{ asset("public/frontend") }}/assets/img/avatar/avatar-5.jpg" alt="avatar" class="img-fluid">
                        </a>
                    </div>
                    <div class="agent-details">
                        <h5><a href="team.html">Martin Smith</a></h5>
                        <p>Web Developer</p>
                        <ul class="social-list clearfix">
                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 ">
                <div class="agent-2">
                    <div class="agent-photo">
                        <a href="team.html">
                            <img src="{{ asset("public/frontend") }}/assets/img/avatar/avatar-6.jpg" alt="avatar" class="img-fluid">
                        </a>
                    </div>
                    <div class="agent-details">
                        <h5><a href="team.html">John Pitarshon</a></h5>
                        <p>Creative Director</p>
                        <ul class="social-list clearfix">
                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="agent-2">
                    <div class="agent-photo">
                        <a href="team.html">
                            <img src="{{ asset("public/frontend") }}/assets/img/avatar/avatar-7.jpg" alt="avatar" class="img-fluid">
                        </a>
                    </div>
                    <div class="agent-details">
                        <h5><a href="team.html">Maria Blank</a></h5>
                        <p>Office Manager</p>
                        <ul class="social-list clearfix">
                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 ">
                <div class="agent-2">
                    <div class="agent-photo">
                        <a href="team.html">
                            <img src="{{ asset("public/frontend") }}/assets/img/avatar/avatar-8.jpg" alt="avatar" class="img-fluid">
                        </a>
                    </div>
                    <div class="agent-details">
                        <h5><a href="team.html">Karen Paran</a></h5>
                        <p>Support Manager</p>
                        <ul class="social-list clearfix">
                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" class="instagram"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
     3  </div>
     <div class="row">
         <div class="col-md-12">
            <div class="carousel" id="team_cursol" data-flickity='{ "groupCells": false,"autoPlay": true,"cellAlign": "left", "contain": true,"freeScroll": true,"draggable": true ,"wrapAround": true,"pauseAutoPlayOnHover": true,"freeScrollFriction": 0.15,"selectedAttraction": 0.01}'>
            <?php
                foreach ($teamAll as $team) {
                   
            ?>
            <div class="carousel-cell col-xl-3 col-lg-3 col-md-3 col-sm-6">
                <div class="agent-2">
                    <div class="agent-photo">
                        <a href="team.html">
                            <img src="{{ asset($team->image) }}" alt="avatar" class="img-fluid">
                        </a>
                    </div>
                    <div class="agent-details">
                        <h5><a href="team.html">{{$team->name}}</a></h5>
                        <p>{{$team->designation}}</p>
                        <ul class="social-list clearfix">
                            <?php if($team->facebook){ ?>
                            <li><a href="{{$team->facebook}}" class="facebook"><i class="fa fa-facebook"></i></a></li>
                            <?php } ?>

                            <?php if($team->twiteer){ ?>
                            <li><a href="{{$team->twiteer}}" class="twitter"><i class="fa fa-twitter"></i></a></li>
                            <?php } ?>

                            <?php if($team->instagram){ ?>
                            <li><a href="{{$team->instagram }}" class="instagram"><i class="fa fa-instagram"></i></a></li>
                            <?php } ?>

                            <?php if($team->linkedin){ ?>
                            <li><a href="{{$team->linkedin}}" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                            <?php } ?>

                            <?php if($team->skype){ ?>
                            <li><a href="{{$team->skype}}" class="linkedin"><i class="fa fa-skype"></i></a></li>
                            <?php } ?>
                            <?php if($team->google_plus){ ?>
                            <li><a href="{{$team->google_plus}}" class="linkedin"><i class="fa fa-google-plus"></i></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div> 
         </div>
     </div>
        
    </div>
</div>

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
                <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-6 col-12 filter-team tTeam_{{$team->teamCategory}}">
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
