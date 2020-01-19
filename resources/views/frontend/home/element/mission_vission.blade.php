<!-- Blog start -->
<style type="text/css">
    .detail p{
        text-align: justify;
    }
</style>
<?php
    use App\Menu;
?>
<div class="blog content-area-2">
    <div class="container">
        <div class="main-title">
            <h1><span>{{$missionVission->firstHomeTitle}}</span> {{$missionVission->secondHomeTitle}}</h1>
        </div>
        <div class="row">
            <?php 
            foreach ($missionVissionAll as $mission) {
                $otherMenu = Menu::where('id',@$mission->menuId)->first();
                $subMenuName = str_replace(' ', '-', @$otherMenu->menuName);
                $menuLink = route('menu.content',['subMenuName'=>$subMenuName,'menuId'=>@$otherMenu->id]);
             ?>
            <div class="col-lg-3 col-md-6 col-sm-12 d-xl-block d-lg-block">
                <div class="blog-1">
                    <div class="blog-photo">
                        <img src="{{ asset($mission->firstHomeImage) }}" alt="blog" class="img-fluid">
                        
                    </div>
                    <div class="detail">
                        <h3 style="text-align: center;">
                            <a href="{{$menuLink}}" style="text-transform: uppercase;">{{$mission->firstHomeTitle}}</a>
                        </h3>
                        <div style="text-align: justify;"><?php echo $mission->homeDescription ?></div>

                        <a class="btn btn-info mission_read_more" href="{{$menuLink}}">Read More</a>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
<!-- Blog end -->