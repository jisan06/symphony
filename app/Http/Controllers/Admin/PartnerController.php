<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Partner;

class PartnerController extends Controller
{
    
    public function index()
    {
        $partners = Partner::all();
        $title = 'Manage All Client';
        return view('admin.partners.index')->with(compact('partners','title'));
    }

    public function add(Request $request){
        $title = 'Add Client';
        if(count($request->all()) > 0){
            if (isset($request->image)) {
                $image = \App\helperClass::UploadImage($request->image,'partners','public/uploads/partners/');
            }
           $partner = Partner::create( [     
                'name' => $request->name,
                'information' => $request->information,        
                'image' => @$image,        
                'description' => $request->description,                 
                'orderBy' => $request->orderBy,
                'status' => $request->status,      
            ]); 

           return redirect(route('partners.index'))->with('msg','Partner Created Successfully');
        }else{
            return view('admin.partners.add')->with(compact('title'));
        }
        
    }

    public function edit(Request $request, $id=NULL){
        $title = 'Edit Client';
        $partner = Partner::find($id);
        if(count($request->all()) > 0){
            if($request->image){
                @unlink($partner->image);
                $image = \App\helperClass::UploadImage($request->image,'partners','public/uploads/partners/');
                $partner->update( [
                    'image' => @$image,          
            ]);
        }
            $partner->update( [
                'name' => $request->name,
                'information' => $request->information,               
                'description' => $request->description,                 
                'orderBy' => $request->orderBy,
                'status' => $request->status,         
            ]);

            return redirect(route('partners.index'))->with('msg','Partner Updated Successfully'); 
        }else{
            return view('admin.partners.edit')->with(compact('partner','title'));
        }
    }


    public function status(Request $request)
    {
        if($request->ajax())
        {   
            $data = Partner::find($request->partnerId);
            $data->status = $data->status ^ 1;
            $data->update();
            print_r(1);       
            return;
        }

    }

    public function delete(Request $request,$id = NULL)
    {   
        if($request->partnerId){
            $partnerId = $request->partnerId; 
        }else{
            $partnerId = $id;
        }

        $partner = Partner::find($partnerId);
        @unlink($partner->image); 
        Partner::where('id',$partnerId)->delete();
        return redirect(route('partners.index'))->with('msg','Partner Deleted Successfully'); 
    }
  
}
