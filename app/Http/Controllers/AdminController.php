<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
Use Illuminate\Support\Facades\Session;



class AdminController extends Controller
{
    public function index()
    {
        return view('admin.login');
    }
    public function makeLogin(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'password' => 'required',
            'username' => 'required',
        ]);
        if ($validator->fails()) {
            return back()
                ->withErrors($validator)
                ->withInput();
        }


        $data = array(
            'username' => $request->username,
            'password' => $request->password
        );
        if(Auth::guard('admin')->attempt($data)){
            return redirect('deshboard');
        }else{
            // return back()->withErrors(['message'=>'invalid email or password']);
            Session::Flash('msg','invalid email or password');
            return redirect('/admin');
        
        }


        // $admin=Admin::where('username',$request->username)->where('password',$request->password)->get()->toArray();
        // if($admin){
        //     echo 'yes';
        // }
        // else{
        //     echo 'no';
        // }
    }

    public function deshboard(){
        return view('admin.deshboard');
    }
}
