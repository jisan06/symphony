<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\WhyChooseUs;

class WhyChooseUsController extends Controller
{
    
    public function index()
    {
        $chooseUs = WhyChooseUs::all();
        $title = 'Manage Why Choose Us';
        return view('admin.whyChooseUs.index')->with(compact('chooseUs','title'));
    }

    public function add(Request $request){
        $title = 'Add Why Choose';
        if(count($request->all()) > 0){
            if (isset($request->image)) {
                $image = \App\helperClass::UploadImage($request->image,'why_choose_us','public/uploads/why_choose_us/');
            }
           $chooseUs = WhyChooseUs::create( [     
                'title1' => $request->title1,
                'title2' => $request->title2,        
                'image' => @$image,        
                'description' => $request->description,                 
                'orderBy' => $request->orderBy,
                'status' => $request->status,      
            ]); 

           return redirect(route('chooseUs.index'))->with('msg','Why Choose Created Successfully');
        }else{
            return view('admin.whyChooseUs.add')->with(compact('title'));
        }
        
    }

    public function edit(Request $request, $id=NULL){
        $title = 'Edit Why Choose Us';
        $chooseUs = WhyChooseUs::find($id);
        if(count($request->all()) > 0){
            if($request->image){
                @unlink($chooseUs->image);
                $image = \App\helperClass::UploadImage($request->image,'why_choose_us','public/uploads/why_choose_us/');
                $chooseUs->update( [
                    'image' => @$image,          
            ]);
        }
            $chooseUs->update( [
                'title1' => $request->title1,
                'title2' => $request->title2,               
                'description' => $request->description,                 
                'orderBy' => $request->orderBy,
                'status' => $request->status,          
            ]);

            return redirect(route('chooseUs.index'))->with('msg','Why Choose Updated Successfully'); 
        }else{
            return view('admin.whyChooseUs.edit')->with(compact('chooseUs','title'));
        }
    }


    public function status(Request $request)
    {
        if($request->ajax())
        {   
            $data = WhyChooseUs::find($request->chooseUsId);
            $data->status = $data->status ^ 1;
            $data->update();
            print_r(1);       
            return;
        }

    }

    public function delete(Request $request,$id = NULL)
    {   
        if($request->chooseUsId){
            $chooseUsId = $request->chooseUsId; 
        }else{
            $chooseUsId = $id;
        }

        $chooseUs = WhyChooseUs::find($chooseUsId);
        @unlink($chooseUs->image); 
        WhyChooseUs::where('id',$chooseUsId)->delete();
        return redirect(route('chooseUs.index'))->with('msg','Why Choose Deleted Successfully'); 
    }
  
}
