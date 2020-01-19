<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;

use App\Blog;
use DB;
use Illuminate\Http\Request;

class BlogController extends Controller
{	
   public function BlogDetails($id){
   	$blog = Blog::where('id',$id)->first();
   	return view('frontend.blog.blog-details')->with(compact('blog'));
   }
}
