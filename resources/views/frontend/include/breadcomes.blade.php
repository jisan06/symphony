<?php
use App\Menu;
use App\Team;
use App\TeamCategory;
use App\Article;
	if(@$team){
		$name = "Team Member";
	}elseif(@$portfolio){
        $name = "Portfolio";
    }elseif(@$client){
        $name = "Client";
    }elseif(@$blog){
        $name = "Blog";
    }elseif(@$category_members){    
        $menuName = str_replace(' ', '-', $menus->menuName);
        $menuLink = route('menu.content',['menuName'=>$menuName,'menuId'=>$menus->id]);
    }elseif(@$productFeatureList){
        $parentMenu = Menu::where('id',$menuDetails->parent)->first();   
        $paentMenuName = str_replace(' ', '-', $parentMenu->menuName);
        $menuLink = route('menu.content',['paentMenuName'=>$paentMenuName,'menuId'=>$parentMenu->id]);
        $name = $menuDetails->menuName;
    }elseif(@$productFeatureDetails){
        $parentMenu = Menu::where('id',$menuDetails->parent)->first();   
        $paentMenuName = str_replace(' ', '-', $parentMenu->menuName);
        $subMenuName = str_replace(' ', '-', $parentMenu->menuName);
        $parentMenuLink = route('menu.content',['paentMenuName'=>$paentMenuName,'menuId'=>$parentMenu->id]);
        $menuLink = route('menu.content',['subMenuName'=>$subMenuName,'subMenuId'=>$menuDetails->id]);
        $name = $productFeatureDetails->articleName;
    }else{
		$name = @$menuDetails->menuName;
	}
    $article = Article::where('menuId',@$menuDetails->id)->first();
    if(file_exists(@$article->headerImage)){
        $headerImage = asset('/'.$article->headerImage);
    }else{
         $headerImage = asset('/public/frontend/')."/header_image.png";
    }
?>


<div class="sub-banner overview-bgi" style="background: rgba(0, 0, 0, 0.04) url({{@$headerImage}}) top left repeat;">
    <div class="container">
        <div class="breadcrumb-area">
            <h1>{{@$name}}</h1>
            <ul class="breadcrumbs">
                <li><a href="{{url('/')}}">Home</a></li>

                @if(@$categories)
                    <li class="active">
                        <a href="{{$menuLink}}">{{@$menus->menuName}}</a>
                    </li>
                    <li class="active">{{@$categories->name}}</li>

                @elseif(@$productFeatureList)
                    <li class="active">
                        <a href="{{$menuLink}}">{{@$parentMenu->menuName}}</a>
                    </li>
                    <li class="active">{{@$menuDetails->menuName}}</li>

                @elseif(@$productFeatureDetails)
                    <li class="active">
                        <a href="{{$parentMenuLink}}">{{@$parentMenu->menuName}}</a>
                    </li>
                     <li class="active">
                        <a href="{{$menuLink}}">{{@$menuDetails->menuName}}</a>
                    </li>
                    <li class="active">{{@$productFeatureDetails->articleName}}</li>

                @else
                <li class="active">{{@$name}}</li>
                @endif
            </ul>
        </div>
    </div>
</div>
