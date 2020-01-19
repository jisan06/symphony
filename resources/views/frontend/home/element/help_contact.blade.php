<!-- intro section start -->
<?php
    use App\Menu;
    $mainMenu = Menu::where('id',10)->first();
    $menuName = str_replace(' ', '-', $mainMenu->menuName);
    $menuLink = route('menu.content',['menuName'=>$menuName,'menuId'=>$mainMenu->id]);
?>
<div class="intro-section">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                <img src="{{ asset('/public/frontend') }}/footer_image.png" alt="loo" style="height: 60px;">
            </div>
            <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
                <div class="intro-text">
                    <h3>have any queries? call us anytime</h3>
                </div>
            </div>
            <div class="col-xl-2 col-lg-3 col-md-3 col-sm-12">
                <a href="{{ $menuLink }}" class="btn btn-md">Contact Us</a>
            </div>
        </div>
    </div>
</div>
<!-- intro section end -->