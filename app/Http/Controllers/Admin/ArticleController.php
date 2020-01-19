<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Article;
use App\Menu;

class ArticleController extends Controller
{
    public function index()
    {
        $articles = Article::all();
        $title = 'Manage All Articles';
        $parentArticleParam = @$_GET['parentArticle'];
        $subArticleParam = @$_GET['subArticle'];
        $parentArticleList = Article::where('articleStatus',1)->where('parentArticle',NULL)->get(); 
        $subArticleList = Article::where('parentArticle',$parentArticleParam)->get();

        if(@$parentArticleParam != '' && @$parentArticleParam != 'all' && @$subArticleParam != ''){ 
            $subArticleList = Article::where('parentArticle',$parentArticleParam)->get();
            $articles = Article::where('parentArticle',$subArticleParam)->orWhere('id',$subArticleParam)->get(); 
        }elseif(@$parentArticleParam && @$parentArticleParam != 'all'){
            $subArticleList = Article::where('parentArticle',$parentArticleParam)->get();
            $articles = Article::where('parentArticle',$parentArticleParam)->orWhere('id',$parentArticleParam)->get(); 
        }else{
            $subArticleList = Article::where('parentArticle','!=',NULL)->get();
            $articles = Article::all(); 
        }
        return view('admin.articles.index')->with(compact('articles','title','parentArticleParam','subArticleParam','parentArticleList','subArticleList'));
    }

    public function add(Request $request){
        $title = 'Add Article';
        $articleList = Article::orderBy('id',"ASC")->get();
        if(count($request->all()) > 0){
        $this->validate(request(), [
            'articleName' => 'required|unique:articles',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg'
        ]);

        if (isset($request->firstHomeImage)) {
            $firstHomeImage = \App\helperClass::UploadImage($request->firstHomeImage,'articles','public/uploads/articles/home/');
        }

        if (isset($request->firstInnerImage)) {
            $firstInnerImage = \App\helperClass::UploadImage($request->firstInnerImage,'articles','public/uploads/articles/inner_page/');
        }

        if (isset($request->headerImage)) {
            $headerImage = \App\helperClass::UploadImage($request->headerImage,'articles','public/uploads/articles/header_image/');
        }

       $articles = Article::create( [   
            'parentArticle' => $request->parentArticle,  
            'articleName' => @$request->articleName,
            'firstHomeTitle' => @$request->firstHomeTitle,
            'secondHomeTitle' => @$request->secondHomeTitle,
            'firstInnerTitle' => @$request->firstInnerTitle,
            'secondInnerTitle' => @$request->secondInnerTitle,
            'firstHomeImage' => @$firstHomeImage,
            'firstInnerImage' => @$firstInnerImage,
            'headerImage' => @$headerImage,
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

       return redirect(route('articles.index'))->with('msg','Article Created Successfully');
        }else{
            return view('admin.articles.add')->with(compact('title','articleList'));
        } 
    }

    public function edit(Request $request, $id=NULL){
        $title = 'Edit Article';
        $articleList = Article::orderBy('id',"ASC")->get();
        $menus = Menu::orderBy('id',"ASC")->get();
        $articles = Article::find($id);
        if(count($request->all()) > 0){
            if (isset($request->firstHomeImage)) {
                @unlink($articles->firstHomeImage);
                $firstHomeImage = \App\helperClass::UploadImage($request->firstHomeImage,'articles','public/uploads/articles/home/');
                $articles->update( [
                    'firstHomeImage' => $firstHomeImage, 
                    ]);
            }

            if (isset($request->firstInnerImage)) {
                 @unlink($articles->firstInnerImage);
                 $firstInnerImage = \App\helperClass::UploadImage($request->firstInnerImage,'articles','public/uploads/articles/inner_page/');
                $articles->update( [
                    'firstInnerImage' => $firstInnerImage,
                    ]);
            }

            if (isset($request->headerImage)) {
                 @unlink($articles->headerImage);
                 $headerImage = \App\helperClass::UploadImage($request->headerImage,'articles','public/uploads/articles/header_image/');
                $articles->update( [
                    'headerImage' => $headerImage,
                    ]);
            }
            if($request->parentMenu && $articles->menuId == ''){
                $menu = Menu::create( [
                'parent' => $request->parentMenu,
                'menuName' => $request->articleName,
                'articleName' => $request->articleName,
                'firstHomeTitle' => $request->firstHomeTitle,
                'firstHomeImage' => @$firstHomeImage,
                'homeDescription' => $request->homeDescription,
                'urlLink' => $request->urlLink,
                'metaTitle' => $request->metaTitle,            
                'metaKeyword' => $request->metaKeyword,            
                'metaDescription' => $request->metaDescription,            
                'orderBy' => '1', 
                'menuStatus' => '1',       
                'showInMenu' => 'yes',       
                ]);

                $articles->update( [
                    'menuId' => @$menu->id,
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

            return redirect(route('articles.index'))->with('msg','Article Updated Successfully'); 
        }else{
            return view('admin.articles.edit')->with(compact('articles','articleList','menus','title'));
        }
    }

    public function status(Request $request)
    {
        if($request->ajax())
        {   
            $data = Article::find($request->articleId);
            $data->articleStatus = $data->articleStatus ^ 1;
            $data->update();
            print_r(1);       
            return;
        }

    }

    public function delete(Request $request,$id = NULL)
    {   
        if($request->articleId){
            $articleId = $request->articleId; 
        }else{
            $articleId = $id;
        }

        $articles = Article::find($articleId);
        @unlink($articles->firstHomeImage);
        @unlink($articles->firstInnerImage);
        Article::where('id',$articleId)->delete(); 
        return redirect(route('articles.index'))->with('msg','Article Deleted Successfully');
    }

    public function getSubArticle(Request $request){
        $parentArticle = $request->parentArticle;

        $subArticles = Article::where('parentArticle',$parentArticle)->get();

        if($request->ajax())
            {
                return response()->json([
                    'subArticles'=>$subArticles,
                    'countSubArticles'=>count($subArticles),
                ]);
            }
    }
  
}
