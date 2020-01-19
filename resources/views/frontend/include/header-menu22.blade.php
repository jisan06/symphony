<?php
    use App\Menu;
    use App\Team;
    $menus = Menu::orderBy('orderBy','ASC')->where('showInMenu','yes')->where('menuStatus','1')->where('parent',NULL)->orWhere(\DB::raw('menus.id'), '=', \DB::raw('menus.parent'))->get();
?>
<nav class="navbar navbar-expand-lg navbar-light rounded">
    <div class="row">
        <div class="col-md-12" style="padding: 0px;">
            <a class="navbar-brand logo navbar-brand d-flex mr-auto" href="{{url('/')}}">
                <img src="{{ asset('/').@$information->siteLogo }}" alt="logo">
            </a>
        </div>

        <div class="col-md-12">
           <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="fa fa-bars"></span>
            </button>
            <div class="navbar-collapse collapse w-100" id="navbar">
                <ul class="navbar-nav flex-column mainUl">
                    <li class="nav-item dropdown active">
                        <a class="nav-link" href="<?php echo  url('/') ?>" id="navbarDropdownMenuLink"  aria-haspopup="true" aria-expanded="false">
                            Home
                        </a>
                        
                    </li>
                <?php
                    foreach ($menus as $mainMenu) {
                        $teamCategory = DB::table("team-category")
                            ->select(DB::raw('0 as id'),DB::raw('"" as menuName'),"id as teamCatId","name as teamCatName","orderBy as orderBy")
                            ->where('status',1);

                        $subMenus = Menu::select('id as id', 'menuName as menuName',DB::raw('0 as teamCatId'),DB::raw('"" as teamCatName'),"orderBy as orderBy")
                                ->where('showInMenu','yes')
                                ->where('parent',$mainMenu->id)
                                ->where('menuStatus','1')->union($teamCategory)
                                ->orderBy('orderBy','ASC')
                                ->get();

                        if(count($subMenus) > 0){
                            $dropdownToogle = 'dropdown-toggle';
                        }else{
                            $dropdownToogle = '';
                        }

                        $menuName = str_replace(' ', '-', $mainMenu->menuName);
                        $menuLink = route('menu.content',['menuName'=>$menuName,'menuId'=>$mainMenu->id]);


                ?>
                    <li class="nav-item dropdown parentMenu">
                        <a class="{{$dropdownToogle}} parentMenuLink" href="{{@$menuLink}}" id="navbarDropdown9" role="button" aria-haspopup="true" aria-expanded="false">
                            {{$mainMenu->menuName}}
                        </a> 

                        <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <?php
                                foreach ($subMenus as $subMneu) {
                                if($subMneu->id !=0){
                                    $subName = $subMneu->menuName;

                                    $subMenuName = str_replace(' ', '-', $subMneu->menuName);
                                    $subMenuLink = route('menu.content',['subMenuName'=>$subMenuName,'menuId'=>$subMneu->id]);
                                }
                                if($subMneu->teamCatId){
                                    $subName = $subMneu->teamCatName;
                                    $subMenuName = str_replace(' ', '-', $subMneu->teamCatName);
                                    $subMenuLink = route('menu.content',['subMenuName'=>$subMenuName,'menuId'=>$subMneu->id]);
                                } 
                                $childMenus = Menu::orderBy('orderBy','ASC')->where('showInMenu','yes')->where('parent',$subMneu->id)->Where('parent', '!=',$subMneu->parent)->where('menuStatus','1')->get();

                                if(count($childMenus) >0 ){
                                        $dropdownClass = 'dropdown-toggle';
                                    }else{
                                        $dropdownClass = '';
                                    }
                            ?>
                            <li class="dropdown-submenu"><a class="dropdown-item {{@$dropdownClass}}" href="{{$subMenuLink}}">{{@$subName}}</a>
                                <ul class="dropdown-menu">
                            <?php
                                foreach ($childMenus as $childMenu) {
                                $childMenuName = str_replace(' ', '-', $childMenu->menuName);
                                $childMenuLink = route('menu.content',['childMenuName'=>$childMenuName,'menuId'=>$childMenu->id]); 

                            ?>
                                <li><a class="dropdown-item" href="{{$childMenuLink}}">{{$childMenu->menuName}}</a></li>
                            <?php } ?>
                                </ul>
                            </li>
                            <?php } ?>
                        </ul>
                    </li>

                <?php } ?>

                </ul>
             
            </div>
        </div>
           
    </div>
</nav>