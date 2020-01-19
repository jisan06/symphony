<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Team;
use App\TeamCategory;
use App\Menu;

class TeamController extends Controller
{	public function Category($catName=NULL,$catId=NULL){
		$category_members = Team::where('teamCategory',$catId)->where('status',1)->get();
		$categories = TeamCategory::where('id',$catId)->first();
        $menus = Menu::where('id',3)->first();
		return view('frontend.team.team-category')->with(compact('category_members','catId','categories','menus'));
	}
    public function TeamDetails($id){
        $team = Team::where('id',$id)->first();
        return view('frontend.team.team-details')->with(compact('team'));
    }
   
}
