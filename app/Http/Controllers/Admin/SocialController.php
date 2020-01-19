<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Social;

class SocialController extends Controller
{
    public function information(){
    	$socials = Social::where('id',1)->first();
        
        return view('admin.socials.information')->with(compact('socials'));
    	
    }

    public function updatSocials(Request $request){
        $socialId = $request->socialId;

        $social = Social::find($socialId);

        $social->update( [
            'facebook' => $request->facebook,         
            'twitter' => $request->twitter,  
            'google' => $request->google,  
            'linkdin' => $request->linkdin,  
            'youtube' => $request->youtube,    
            'status' => $request->status,  
            'metaTitle' => $request->metaTitle,            
            'metaKeyword' => $request->metaKeyword,            
            'metaDescription' => $request->metaDescription,            
            'orderBy' => $request->orderBy,           
        ]);

        return redirect(route('social.info'))->with('msg','Social Information Updated Successfully');     
    }
}
