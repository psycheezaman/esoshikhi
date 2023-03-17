<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use Str;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas = Post::get();
        return view('admin.post.index',compact('datas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.post.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $validated = $request->validate([
            'title' => 'required|unique:posts',
        ]);


        $post = new Post();
        $post->title = $request->title;
        $post->slug = Str::slug($request->title);
        $post->writter = $request->writter;
        $post->short_description = $request->short_description;
        $post->description = $request->description;
        $post->status = $request->status;
        $image= $request->file('image');
        if($image)
        {
            $sitebanner_doctor_name= $image->getClientOriginalName();
            $sitebanner_doctor_name = preg_replace('/\s+/', '-', $sitebanner_doctor_name);
            $sitebanner_doctor_full_name =  $sitebanner_doctor_name;
            $upload_path = 'uploads/post/';
            $image_url = $upload_path. $sitebanner_doctor_full_name;
            $success =  $image->move(($upload_path),  $sitebanner_doctor_full_name);
            // $img = Image::make($image_url)->resize(400, 200)->save();
            if($success)
            {
                // if($sitebanner->logo){
                //     unlink(public_path($sitebanner->logo));
                // }
                $post->image = $image_url;
            }
        }
        $post->save();

        return redirect()->back()->withSuccess('Post saved successfully');
      
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Post::findOrFail($id);
        return view('admin.post.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $post = Post::findOrFail($id);
        $post->title = $request->title;
        $post->slug = Str::slug($request->title);
        $post->writter = $request->writter;
        $post->short_description = $request->short_description;
        $post->description = $request->description;
        $post->status = $request->status;
        $image= $request->file('image');
        if($image)
        {
            $sitebanner_doctor_name= $image->getClientOriginalName();
            $sitebanner_doctor_name = preg_replace('/\s+/', '-', $sitebanner_doctor_name);
            $sitebanner_doctor_full_name =  $sitebanner_doctor_name;
            $upload_path = 'uploads/post/';
            $image_url = $upload_path. $sitebanner_doctor_full_name;
            $success =  $image->move(($upload_path),  $sitebanner_doctor_full_name);
            // $img = Image::make($image_url)->resize(400, 200)->save();
            if($success)
            {
                // if($sitebanner->logo){
                //     unlink(public_path($sitebanner->logo));
                // }
                $post->image = $image_url;
            }
        }
        $post->save();

        return redirect()->back()->withSuccess('Post updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::findOrFail($id);
        $post->delete();

        return redirect()->back()->withFail('Post deleted successfully');
    }
}
