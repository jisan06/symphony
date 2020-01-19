<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use URL;
use App\Menu;
use App\Article;

class MenuController extends Controller
{
    public function MenuContent($name,$id){  
    	$menuDetails = Menu::where('id',$id)->first();
    	if($menuDetails->parent == 5){
    		$product = Article::where('menuId',$id)->first();
    		$productFeatureList = Article::where('articleStatus',1)->where('parentArticle',$product->id)->get();
    		return view('frontend.product.product_details')->with(compact('menuDetails','product','productFeatureList'));
    	}elseif($menuDetails->id == 5){
            $product = Article::where('id',5)->first();
            $productAll = Article::orderBy('orderBy','asc')->where('parentArticle',5)->where('articleStatus',1)->get();
            return view('frontend.product.index')->with(compact('menuDetails','product','productAll'));
        }
        else{
        	return view('frontend.menu-contents.menuContent')->with(compact('menuDetails'));
    	}
    }

}