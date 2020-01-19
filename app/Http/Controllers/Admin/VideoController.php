<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Video;

class VideoController extends Controller
{
    function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $videos = Video::all();
        $title = 'Manage All Videos';
        return view('admin.videos.index')->with(compact('videos','title'));
    }

    public function add(Request $request){
        $title = 'Add New Video';
        if(count($request->all()) > 0){
           $video = Video::create( [     
                'title1' => $request->title1,
                'title2' => $request->title2,        
                'video_link' => $request->video_link,        
                'metaTitle' => $request->metaTitle,            
                'metaKeyword' => $request->metaKeyword,            
                'metaDescription' => $request->metaDescription,            
                'orderBy' => $request->orderBy,
                'status' => $request->status,      
            ]); 

           return redirect(route('videos.index'))->with('msg','Video Added Successfully');
        }else{
            return view('admin.videos.add')->with(compact('title'));
        }
        
    }

    public function edit(Request $request, $id=NULL){
        $title = 'Edit Video';
        $videos = Video::where('id',$id)->first();
        if(count($request->all()) > 0){
            $videoId = $request->videoId;
            $video = Video::find($videoId);
            
            $video->update( [
                'title1' => $request->title1,
                'title2' => $request->title2,        
                'video_link' => $request->video_link,        
                'metaTitle' => $request->metaTitle,            
                'metaKeyword' => $request->metaKeyword,            
                'metaDescription' => $request->metaDescription,            
                'orderBy' => $request->orderBy,
                'status' => $request->status,          
            ]);

            return redirect(route('videos.index'))->with('msg','Video Updated Successfully'); 
        }else{
            return view('admin.videos.edit')->with(compact('videos','title'));
        }
    }


    public function status(Request $request)
    {
        if($request->ajax())
        {   
            $data = Video::find($request->videoId);
            $data->status = $data->status ^ 1;
            $data->update();
            print_r(1);       
            return;
        }

    }

    public function delete(Request $request,$id = NULL)
    {   if($id!=null){ 
            Video::where('id',$id)->delete();
            return redirect(route('videos.index'))->with('msg','Video Deleted Successfully'); 
        }else{
             Video::where('id',$request->videoId)->delete(); 
        }
    }
  
}
