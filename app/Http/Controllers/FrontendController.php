<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Menu;
use App\Team;
use App\Slider;
use App\Settings;
use App\AboutCompany;
use App\Article;
use App\Portfolio;
use App\Partner;
use App\TeamCategory;
use Response;

class FrontendController extends Controller
{
    public function index()
    {    $webInfo = Settings::first();
         
         $sliders = Slider::orderBy('orderBy','ASC')->where('status','1')->get();
         $aboutCompany = AboutCompany::first();
         $welcomeMessege = Article::where('id',21)->first();
         $missionVission = Article::where('id',22)->first();
         $missionVissionAll = Article::where('parentArticle',22)->get();
         $services = Article::where('id',11)->first();
         $serviceAll = Article::where('parentArticle',11)->get();
         $products = Article::where('id',5)->first();
         $productAll = Article::orderBy('orderBy','asc')->where('parentArticle',5)->where('articleStatus',1)->get();
         $portfolioTitle = Article::where('articleStatus',1)->where('id',28)->first();
         $portfolioAll = Portfolio::where('articleStatus',1)->get();
         $teamTitle = Article::where('articleStatus',1)->where('id',3)->first();
         $teamCategories = TeamCategory::orderBy('orderBy','ASC')->where('status',1)->get();
         $teamAll= Team::orderBy('orderBy','ASC')->where('status',1)->get();
         $clientTitle = Article::where('articleStatus',1)->where('id',30)->first();
         $clientAll= Partner::orderBy('orderBy','ASC')->where('status',1)->get();
         $title = $webInfo->siteTitle;
         $metaTag =[
            'meta_keyword'=>$webInfo->metaKeyword,
            'meta_title' =>$webInfo->metaTitle,
            'meta_description' =>$webInfo->metaDescription
         ];
         
           return view('frontend.home.home')->with(compact('sliders','aboutCompany','welcomeMessege','missionVission','missionVissionAll','services','serviceAll','products','productAll','portfolioTitle','portfolioAll','teamTitle','teamCategories','teamAll','clientTitle','clientAll','title','metaTag'));
    }
     
     public function ProdeuctFeatureDetails($parentName,$articleName,$articleId){
        $productFeatureDetails = Article::where('articleStatus','1')->where('id',$articleId)->first();
        $parentArticle = Article::where('id',@$productFeatureDetails->parentArticle)->first();
        $menuDetails = Menu::where('id',@$parentArticle->menuId)->first();
        return view('frontend.product.product_feature_details')->with(compact('menuDetails','productFeatureDetails'));
     }
    
    public function page404()
    {
      return view('frontend.pages.page404');
    }
}
