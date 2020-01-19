<?php

namespace App\Http\Controllers;

use App\Partner;
use Illuminate\Http\Request;

class ClientController extends Controller
{
    public function ClientDetails($id){
        $client = Partner::where('id',$id)->first();
        return view('frontend.client.details')->with(compact('client'));
    }
   
}
