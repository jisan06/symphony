<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use URL;
use Session;
use App\Menu;
use App\Article;

class MenuController extends Controller
{
    public function index()
    {
        $menus = Menu::orderBy('id',"ASC")->get();
        $title = "Manage Menu";
        return view('admin.menus.index')->with(compact('menus','title'));
    }

    public function add(Request $request){
        $title = "Add New Menu";
        $menus = Menu::orderBy('id',"ASC")->get();
        if(count($request->all()) > 0){
            $this->validate(request(), [
                'menuName' => 'required|unique:menus',
                'firstHomeImage' => 'image|mimes:jpeg,png,jpg,gif,svg'
        ]);

        if (isset($request->firstHomeImage)) {
            $firstHomeImage = \App\helperClass::UploadImage($request->firstHomeImage,'menus','public/uploads/articles/home/');
        }

        $menu = Menu::create( [
            'parent' => $request->parent,
            'menuName' => $request->menuName,
            'articleName' => $request->articleName,
            'parentArticle' => $request->parent,
            'firstHomeTitle' => $request->firstHomeTitle,
            'firstHomeImage' => @$firstHomeImage,
            'homeDescription' => $request->homeDescription,
            'urlLink' => $request->urlLink,
            'menuIcon' => $request->menuIcon,
            'metaTitle' => $request->metaTitle,            
            'metaKeyword' => $request->metaKeyword,            
            'metaDescription' => $request->metaDescription,            
            'orderBy' => $request->orderBy, 
            'menuStatus' => $request->menuStatus,       
            'showInMenu' => $request->showInMenu,       
        ]);

        if($menu){
            $articles = Article::create( [     
                'menuId' => @$menu->id,
                'parentArticle' => $request->parent,
                'articleName' => @$request->articleName,
                'firstHomeTitle' => @$request->firstHomeTitle,
                'secondHomeTitle' => @$request->secondHomeTitle,
                'firstInnerTitle' => @$request->firstInnerTitle,
                'secondInnerTitle' => @$request->secondInnerTitle,
                'firstHomeImage' => @$firstHomeImage,
                'secondInnerImage' => @$secondInnerImage,
                'homeDescription' => $request->homeDescription,
                'articleIcon' => $request->menuIcon,
                'metaTitle' => $request->metaTitle,            
                'metaKeyword' => $request->metaKeyword,            
                'metaDescription' => $request->metaDescription,     
            ]);
        }

           return redirect(route('menu.index'))->with('msg','Menu Created Successfully');
        }else{
            return view('admin.menus.addmenu')->with(compact('title','menus'));
        }
    }

    public function edit(Request $request, $id=NULL){
        $menu = Menu::find($id);
        $menus = Menu::orderBy('id',"ASC")->get();
        $title = "Edit Menu";
        if(count($request->all()) > 0){
            $this->validate(request(), [
                'menuName' => 'required',
        ]);

         $menu->update( [
            'parent' => $request->parent,
            'menuName' => $request->menuName,
            'firstHomeTitle' => $request->firstHomeTitle,
            'homeDescription' => $request->homeDescription,
            'urlLink' => $request->urlLink,
            'menuIcon' => $request->menuIcon,
            'metaTitle' => $request->metaTitle,            
            'metaKeyword' => $request->metaKeyword,            
            'metaDescription' => $request->metaDescription,            
            'orderBy' => $request->orderBy, 
            'menuStatus' => $request->menuStatus, 
            'showInMenu' => $request->showInMenu,          
        ]);

           return redirect(route('menu.index'))->with('msg','Menu Updated Successfully');
        }else{
            return view('admin.menus.updatemenu')->with(compact('title','menu','menus'));
        }
    }
    
    public function changeStatus(Request $request)
    {
        if($request->ajax())
        {
            $data = Menu::find($request->menu_id);
            $data->menuStatus = $data->menuStatus ^ 1;
            $data->update();
            print_r(1);       
            return;
        }
        return redirect(route('menu.index')) -> with( 'message', 'Wrong move!');
    }

    public function frontMenu($menuName){
        $menus = Menu::where('menuName',$menuName)->first();

        return view('frontend.menuContents.menuContent')->with(compact('menus'));
    }

    public function delete(Request $request,$id = NULL)
    {   if($id!=null){
            $menu = Menu::find($id);
            @unlink($menu->firstHomeImage); 
            Menu::where('id',$id)->delete();
            return redirect(route('menu.index'))->with('msg','Menu Deleted Successfully'); 
        }else{
            $menu = Menu::find($request->menu_id);
            @unlink($menu->firstHomeImage);
             Menu::where('id',$request->menu_id)->delete(); 
        }
    }


}