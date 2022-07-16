<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Validator;
Use Illuminate\Support\Facades\Session;

class PostController extends Controller
{
    public function createPost(Request $request)
    {
        $data['post'] = new Post();
        if ($request->post_id) {
            $id = $request->post_id;
            $data['post'] = Post::where('id',$id)->first();
        }

        return view('admin.post.addPost', $data);
    }
    

    public function store(Request $request)
    {
        $id = '';
        if ($request->post_id) {
            $id = $request->post_id;
        }
        $validator = Validator::make($request->all(), [
            'title' => 'required',
            'section_title' => 'required',
        ]);
        if ($validator->fails()) {
            $success = 0;
            return back()
                ->withErrors($validator)
                ->withInput();
        } else {
            if ($request->image) {
                $filename = $this->fileUpload($request, 'image', '');
            } else {
                if ($request->old_image) {
                    $filename = $request->old_image;
                }
            }

            $data = [
                'page_title' => $request->page_title,
                'section_title' => $request->section_title,
                'title' => $request->title,
                'description' => $request->description,
                'image' => $filename,
            ];
            $post = Post::updateOrCreate(['id'=>$id], $data);
            if ($post) {
                if($id) 
                    return redirect()->route('post-show')->with(['message' => 'Post Successfully Updated']);
                 else 
                    return redirect()->route('post-show')->with(['message' => 'Post Successfully Inserted']);
                
            }else {
                return back()->with(['message' => 'Something wrong']);
            }
        }
    }

    public function show()
    {
        $data['posts'] = Post::paginate(7);
        return view('admin.post.showPost', $data);
    }

    // public function delete(Request $request){
    //    // dd($request->all());
    //     $id  = $request->id;
    //     //dd($id);
    //     $img = $request->image; 
    //     if($id){
    //         if(File::exists(public_path('uploads/'.$img))) {
    //             File::delete(public_path('uploads/'.$img));
                
    //             $res = Post::find($id)->delete();

    //             if($res){
    //                 echo json_encode('Successfully deleted');
    //             }else{
    //                 echo json_encode("Something went wrong");
    //             }            
    //         }else{
    //             echo json_encode("File not exists.");
    //         }
    //     }else{
    //        echo json_encode("Post Id Not found");
    //     }

    // }

    public Function delete($id){
        $deleteData=Post::find($id);
        //dd($deleteData);
        $deleteData->delete();
        //dd($deleteData);
       
        Session::Flash('msg','Data successfully Deleted');
        return redirect()->back();
    }


}
