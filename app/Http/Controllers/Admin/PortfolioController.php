<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Portfolio;
use App\Article;

class PortfolioController extends Controller
{
    public function index()
    {
        $articles = Portfolio::all();
        $title = 'Portfolio';
        return view('admin.portfolio.index')->with(compact('articles','title'));
    }

    public function add(Request $request){
        $title = 'Add Portfolio';
        $articleList = Article::orderBy('id',"ASC")->where('parentArticle',5)->get();
        if(count($request->all()) > 0){
        $this->validate(request(), [
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg'
        ]);

        if (isset($request->firstHomeImage)) {
            $firstHomeImage = \App\helperClass::UploadImage($request->firstHomeImage,'portfolio','public/uploads/portfolio/home/');
        }

         if (isset($request->firstInnerImage)) {
            $firstInnerImage = \App\helperClass::UploadImage($request->firstInnerImage,'portfolio','public/uploads/portfolio/inner_page/');
        }

       $portfolio = Portfolio::create( [   
            'parentArticle' => $request->parentArticle,  
            'articleName' => @$request->articleName,
            'firstHomeTitle' => @$request->firstHomeTitle,
            'secondHomeTitle' => @$request->secondHomeTitle,
            'firstInnerTitle' => @$request->firstInnerTitle,
            'secondInnerTitle' => @$request->secondInnerTitle,
            'firstHomeImage' => @$firstHomeImage,
            'firstInnerImage' => @$firstInnerImage,
            'homeDescription' => $request->homeDescription,
            'innerDescription' => $request->innerDescription,
            'urlLink' => $request->urlLink,
            'articleIcon' => $request->articleIcon,
            'metaTitle' => $request->metaTitle,            
            'metaKeyword' => $request->metaKeyword,            
            'metaDescription' => $request->metaDescription,            
            'orderBy' => $request->orderBy, 
            'articleStatus' => $request->articleStatus,      
        ]); 

       return redirect(route('portfolio.index'))->with('msg','Portfolio Created Successfully');
        }else{
            return view('admin.portfolio.add')->with(compact('title','articleList'));
        } 
    }

    public function edit(Request $request, $id=NULL){
        $title = 'Edit Portfolio';
        $articleList = Article::orderBy('id',"ASC")->where('parentArticle',5)->get();
        $articles = Portfolio::find($id);
        if(count($request->all()) > 0){
            if (isset($request->firstHomeImage)) {
                @unlink($articles->firstHomeImage);
                $firstHomeImage = \App\helperClass::UploadImage($request->firstHomeImage,'portfolio','public/uploads/portfolio/home/');
                $articles->update( [
                    'firstHomeImage' => $firstHomeImage, 
                    ]);
            }

            if (isset($request->firstInnerImage)) {
                 @unlink($articles->firstInnerImage);
                 $firstInnerImage = \App\helperClass::UploadImage($request->firstInnerImage,'portfolio','public/uploads/portfolio/inner_page/');
                $articles->update( [
                    'firstInnerImage' => $firstInnerImage,
                    ]);
            }
            $articles->update( [
                'parentArticle' => $request->parentArticle,
                'articleName' => @$request->articleName,
                'firstHomeTitle' => @$request->firstHomeTitle,
                'secondHomeTitle' => @$request->secondHomeTitle,
                'firstInnerTitle' => @$request->firstInnerTitle,
                'secondInnerTitle' => @$request->secondInnerTitle,
                'homeDescription' => $request->homeDescription,
                'innerDescription' => $request->innerDescription,
                'urlLink' => $request->urlLink,
                'articleIcon' => $request->articleIcon,
                'metaTitle' => $request->metaTitle,            
                'metaKeyword' => $request->metaKeyword,            
                'metaDescription' => $request->metaDescription,            
                'orderBy' => $request->orderBy, 
                'articleStatus' => $request->articleStatus,          
            ]);

            return redirect(route('portfolio.index'))->with('msg','Portfolio Updated Successfully'); 
        }else{
            return view('admin.portfolio.edit')->with(compact('articles','articleList','title'));
        }
    }

    public function status(Request $request)
    {
        if($request->ajax())
        {   
            $data = Portfolio::find($request->portfolioId);
            $data->articleStatus = $data->articleStatus ^ 1;
            $data->update();
            print_r(1);       
            return;
        }

    }

    public function delete(Request $request,$id = NULL)
    {   
        if($request->portfolioId){
            $portfolioId = $request->portfolioId; 
        }else{
            $portfolioId = $id;
        }
        $articles = Portfolio::find($portfolioId);
        @unlink($articles->firstHomeImage);
        @unlink($articles->firstInnerImage);
        Portfolio::where('id',$portfolioId)->delete(); 
        return redirect(route('portfolio.index'))->with('msg','Portfolio Deleted Successfully');
    }
  
}
