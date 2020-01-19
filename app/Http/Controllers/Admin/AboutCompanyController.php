<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\AboutCompany;

class AboutCompanyController extends Controller
{
    
    public function index()
    {
        $about_company = AboutCompany::all();
        $title = 'About Company';
        return view('admin.aboutCompany.index')->with(compact('about_company','title'));
    }

    public function add(Request $request){
        $title = 'Add About Company';
        if(count($request->all()) > 0){
            if (isset($request->image)) {
                $image = \App\helperClass::UploadImage($request->image,'why_choose_us','public/uploads/about_company/');
            }
           $about_company = AboutCompany::create( [     
                'title1' => $request->title1,
                'title2' => $request->title2,        
                'image' => @$image,        
                'description' => $request->description,                 
                'orderBy' => $request->orderBy,
                'status' => $request->status,      
            ]); 

           return redirect(route('aboutCompany.index'))->with('msg','New About Created Successfully');
        }else{
            return view('admin.aboutCompany.add')->with(compact('title'));
        }
        
    }

    public function edit(Request $request, $id=NULL){
        $title = 'Edit About Company';
        $about_company = AboutCompany::find($id);
        if(count($request->all()) > 0){
            if($request->image){
                @unlink($about_company->image);
                $image = \App\helperClass::UploadImage($request->image,'why_choose_us','public/uploads/about_company/');
                $about_company->update( [
                    'image' => @$image,          
            ]);
        }
            $about_company->update( [
                'title1' => $request->title1,
                'title2' => $request->title2,               
                'description' => $request->description,                 
                'orderBy' => $request->orderBy,
                'status' => $request->status,          
            ]);

            return redirect(route('aboutCompany.index'))->with('msg','About Updated Successfully'); 
        }else{
            return view('admin.aboutCompany.edit')->with(compact('about_company','title'));
        }
    }


    public function status(Request $request)
    {
        if($request->ajax())
        {   
            $data = AboutCompany::find($request->aboutCompanyId);
            $data->status = $data->status ^ 1;
            $data->update();
            print_r(1);       
            return;
        }

    }

    public function delete(Request $request,$id = NULL)
    {   
        if($request->aboutCompanyId){
            $aboutCompanyId = $request->aboutCompanyId; 
        }else{
            $aboutCompanyId = $id;
        }

        $about_company = AboutCompany::find($aboutCompanyId);
        @unlink($about_company->image); 
        AboutCompany::where('id',$aboutCompanyId)->delete();
        return redirect(route('aboutCompany.index'))->with('msg','About Deleted Successfully'); 
    }
  
}
