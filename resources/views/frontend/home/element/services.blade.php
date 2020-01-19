<!-- services start -->
<?php
    use App\Menu;
?>
<div class="content-area-2 bg-grea services_section">
    <div class="container services">
        <div class="main-title">
            <h1><span>{{$services->firstHomeTitle}}</span> {{$services->secondHomeTitle}}</h1>
           <div><?php echo $services->homeDescription; ?></div>
        </div>
        <div class="row">
            <?php foreach ($serviceAll as $service) {
                $otherMenu = Menu::where('id',@$service->menuId)->first();
                $subMenuName = str_replace(' ', '-', @$otherMenu->menuName);
                $menuLink = route('menu.content',['subMenuName'=>$subMenuName,'menuId'=>@$otherMenu->id]);
            ?>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="media services-info">
                    <?php echo @$service->articleIcon; ?>
                    <div class="media-body">
                        <h5>{{@$service->firstHomeTitle}}</h5>
                        <div><?php echo @$service->homeDescription; ?></div>
                        <a class="btn btn-info mission_read_more" href="{{$menuLink}}">Read More</a>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
<!-- services end -->