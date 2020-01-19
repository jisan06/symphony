<?php
Use App\Candidate;
    $candidateId = Session::get('candidateId');
    $hr_id = Session::get('hr_id');
    $candidates = Candidate::where('id',$candidateId)->first();
?>
<style type="text/css">
    /*.navbar-nav a{
        padding-right: 2px;
    }*/
</style>
<div class="header-top-area pt-2 pb-2">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 d-flex small header-top-small">
                <ul class="mb-0 social-links">
                    <li class="list-inline-item mr-0 text-center">
                        <?php if($socialLink->facebook){ ?>
                            <a href="{{$socialLink->facebook}}" target="_blank" class="rounded p-2"><i class="fa fa-facebook"></i></a>
                        <?php } ?>

                         <?php if($socialLink->twitter){ ?>
                            <a href="{{$socialLink->twitter}}" target="_blank" class="rounded p-2"><i class="fa fa-twitter"></i></a>
                        <?php } ?>

                         <?php if($socialLink->google){ ?>
                            <a href="{{$socialLink->google}}" target="_blank" class="rounded p-2"><i class="fa fa-google"></i></a>
                        <?php } ?>

                         <?php if($socialLink->youtube){ ?>
                            <a href="{{$socialLink->youtube}}" target="_blank" class="rounded p-2"><i class="fa fa-youtube-play"></i></a>
                        <?php } ?>

                         <?php if($socialLink->linkdin){ ?>
                            <a href="{{$socialLink->linkdin}}" target="_blank" class="rounded p-2"><i class="fa fa-linkedin"></i></a>
                        <?php } ?>
                    </li>
                </ul>
                <div class="subnav">
                    <p class="list-inline-item ml-4 mb-0">
                        <i class="fa fa-phone mr-1"></i> <?php echo @$information->mobile1;  ?>                           
                    </p>
                    <p class="list-inline-item ml-4 mb-0">
                        <i class="fa fa-envelope-o mr-1"></i> <a href="#" class="__cf_email__" data-cfemail="02766d75646b7342636b6f677160662c616d6f"><?php echo @$information->siteEmail1;  ?></a>
                    </p>
                </div>

            </div><!--col-md-->

            <div class="col-md-7 text-right">
                <div class="list-inline secured-area" style="display: none;">
                     <a class="list-inline-item" href="{{route('candidate.allComapny')}}">Company List</a>
                     <a class="list-inline-item" href="{{route('candidate.allDepartment')}}">Candidate Profile</a>
                    <?php if (isset($hr_id)) {?> 
                         <a class="list-inline-item" href="{{route('hrUser.currentJob')}}">Current Job Offer</a>
                        <a class="list-inline-item" href="{{route('candidate.find')}}">Find Candidates</a>
                        <a class="list-inline-item" href="{{route('hrUser.logout')}}">Logout</a>
                    <?php }else{ ?>

                    <?php if (!isset($candidateId)) {?> 
                        <a class="list-inline-item" href="{{route('candidate.registration')}}">Register</a>
                        <a class="list-inline-item" href="{{route('candidate.login')}}">Login</a>          
                    <?php }else{ ?>
                        <a class="list-inline-item" href="{{route('candidate.profile',$candidateId)}}">Profile</a> 
                        <a class="list-inline-item" href="{{route('candidate.aplliedJob')}}">Applied Jobs</a>  
                        <a class="list-inline-item" href="{{route('candidate.logout')}}">Logout</a>   
                    <?php } } ?>  
                </div>

            <div class="list-inline secured-area">
                <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #2f2e2e!important;float: right;min-height: 0px;    margin-bottom: 0px;padding-top: 0px;">
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" style="background-color: #fff;margin-right: 294px;">
                    <span class="navbar-toggler-icon"></span>
                  </button>

                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto collapseMenu">
                        <a class="list-inline-item" href="{{route('candidate.allComapny')}}">Company List</a>
                         <a class="list-inline-item" href="{{route('candidate.allDepartment')}}">Candidate Profile</a>
                        <?php if (isset($hr_id)) {?> 
                             <a class="list-inline-item" href="{{route('hrUser.currentJob')}}">Current Job Offer</a>
                            <a class="list-inline-item" href="{{route('candidate.find')}}">Find Candidates</a>
                            <a class="list-inline-item" href="{{route('hrUser.logout')}}">Logout</a>
                        <?php }else{ ?>

                        <?php if (!isset($candidateId)) {?> 
                            <a class="list-inline-item" href="{{route('candidate.registration')}}">Register</a>
                            <a class="list-inline-item" href="{{route('candidate.login')}}">Login</a>          
                        <?php }else{ ?>
                            <a class="list-inline-item" href="{{route('candidate.profile',$candidateId)}}">Profile</a> 
                            <a class="list-inline-item" href="{{route('candidate.aplliedJob')}}">Applied Jobs</a>  
                            <a class="list-inline-item" href="{{route('candidate.logout')}}">Logout</a>   
                        <?php } } ?>  
                    </ul>
                   
                  </div>
                </nav>
            </div>
            </div>

        </div><!--row-->
    </div><!--container-->
</div><!--header-top-area-->


