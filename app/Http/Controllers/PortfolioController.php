<?php

namespace App\Http\Controllers;

use App\Portfolio;
use Illuminate\Http\Request;

class PortfolioController extends Controller
{
    public function PortfolioDetails($id){
        $portfolio = Portfolio::where('id',$id)->first();
        return view('frontend.portfolio.details')->with(compact('portfolio'));
    }
   
}
