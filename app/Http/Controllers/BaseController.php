<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\Post;

class BaseController extends Controller
{
    public function home(){
        $home=Page::where('page_title','home')->get();
        $post=Post::where('page_title','home')->get();
        return view('home',['home'=>$home,'post'=>$post,]);
    }
    public function services(){
        $service=Page::where('page_title','services')->get();
        return view('services',['service'=>$service]);
    }
    public function company(){
        $company=Page::where('page_title','our_company')->get();
        return view('company',['company'=>$company]);
    }
    public function contact_us(){
        return view('contact');
    }
}
