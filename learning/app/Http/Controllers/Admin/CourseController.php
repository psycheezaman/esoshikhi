<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Course;
use Str;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas = Course::get();
        return view('admin.course.index',compact('datas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::get();
        return view('admin.course.create', compact('categories'));
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
            'title' => 'required|unique:courses',
            'category_id' => 'required',
            'price' => 'required',
            'image' => 'required',
            'short_description' => 'required',
        ]);


        $data = new Course();
        $data->category_id = $request->category_id;
        $data->title = $request->title;
        $data->slug = Str::slug($request->title);
        $data->offline_or_online = $request->offline_or_online;
        $data->student_or_pro = $request->student_or_pro;
        $data->price = $request->price;
        $data->course_duration = $request->course_duration;
        $data->daily_hour = $request->daily_hour;
        $data->total_enrolled = $request->total_enrolled;
        $data->lectures = $request->lectures;
        $data->quizzes = $request->quizzes;
        $data->skill_level = $request->skill_level;
        $data->assessments = $request->assessments;
        $data->short_description = $request->short_description;
        $data->description = $request->description;
        $data->status = $request->status;

        $image = $request->file('image');
        if($image)
        {
            $image_name= uniqid();
            $ext = strtolower($image->getClientOriginalExtension());
            $image_full_name = $image_name. '.' .$ext;
            $upload_path = 'images/course/';
            $image_url = $upload_path.$image_full_name;
            $success = $image->move($upload_path, $image_full_name);
            if($success)
            {
                $data->image = $image_url;
            }

        }

        $data->save();

        return redirect()->back()->withSuccess('Course saved successfully');
      
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
        $categories = Category::get();
        $data = Course::findOrFail($id);

        return view('admin.course.edit', compact('data', 'categories'));
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
        $data = Course::findOrFail($id);
        $data->category_id = $request->category_id;
        $data->title = $request->title;
        $data->slug = Str::slug($request->title);
        $data->offline_or_online = $request->offline_or_online;
        $data->student_or_pro = $request->student_or_pro;
        $data->price = $request->price;
        $data->course_duration = $request->course_duration;
        $data->daily_hour = $request->daily_hour;
        $data->total_enrolled = $request->total_enrolled;
        $data->lectures = $request->lectures;
        $data->quizzes = $request->quizzes;
        $data->skill_level = $request->skill_level;
        $data->assessments = $request->assessments;
        $data->short_description = $request->short_description;
        $data->description = $request->description;
        $data->status = $request->status;

        $image = $request->file('image');
        if($image)
        {
            $image_name= uniqid();
            $ext = strtolower($image->getClientOriginalExtension());
            $image_full_name = $image_name. '.' .$ext;
            $upload_path = 'images/course/';
            $image_url = $upload_path.$image_full_name;
            $success = $image->move($upload_path, $image_full_name);

            if($success)
            {
                $old_image = $data->image;
                if (file_exists($old_image)) {
                    unlink($old_image);
                }
                $data->image = $image_url;
            }


        }

        $data->save();

        return redirect()->back()->withSuccess('Course updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $imagePath = Course::where('id', $id)->first();
        $image = $imagePath->image;

        if (file_exists($image)) {
            unlink($image);
            Course::where('id', $id)->delete();
        }else{
            Course::where('id', $id)->delete();
        }


        return redirect()->back()->withFail('Course deleted successfully');
    }
}
