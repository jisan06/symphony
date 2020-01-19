<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\OtherInformation;
use Illuminate\Http\Request;

class OtherInformationController extends Controller
{
    public function information(Request $request){
    	$info = OtherInformation::first();
        $title = "Update information";
        if(count($request->all()) > 0){
            $info->update( [
                'homeLogo' => $request->homeLogo,         
                'homeFavIcon' => $request->homeFavIcon,         
                'categoryCoverImage' => $request->categoryCoverImage,         
                'categoryImage' => $request->categoryImage,         
                'sliderImage' => $request->sliderImage,         
                'teamMemberImage' => $request->teamMemberImage,  
                'testimonialImage' => $request->testimonialImage,  
                'partnerImage' => $request->partnerImage,  
                'articleHomeImage' => $request->articleHomeImage,  
                'articleInnerImage' => $request->articleInnerImage,  
                'adminMainLogo' => $request->adminMainLogo,  
                'adminSmallLogo' => $request->adminSmallLogo,  
                'adminFavIcon' => $request->adminFavIcon,     
            ]);
        return redirect(route('others.info'))->with('msg','Information Updated Successfully');   
        }else{
          return view('admin.othersInfo.information')->with(compact('info','title'));  
        }
    }

}
