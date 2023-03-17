<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Course;
use App\Models\Batch;
use App\Models\HomeWork;
use Str;
use Auth;

class HomeWorkController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datas = HomeWork::paginate(50);
        return view('teacher.home_work.index',compact('datas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $courses = Course::get();
        $batches = Batch::get();
        return view('teacher.home_work.create', compact('courses', 'batches'));
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
            'start_date' => 'required',
            'due_date' => 'required',
            'description' => 'required',
            'marks' => 'required',
            'course_id' => 'required',
            'batch_id' => 'required',
        ]);



        $data = new HomeWork();
        $data->teacher_id = Auth::user()->id;
        $data->course_id = $request->course_id;
        $data->batch_id = $request->batch_id;
        $data->start_date = $request->start_date;
        $data->due_date = $request->due_date;
        $data->marks = $request->marks;
        $data->description = $request->description;
        $data->status = $request->status;

        $file = $request->file('pdf');
        if($file)
        {
            $image_name= uniqid();
            $ext = strtolower($file->getClientOriginalExtension());
            $image_full_name = $image_name. '.' .$ext;
            $upload_path = 'files/home_work_file/';
            $image_url = $upload_path.$image_full_name;
            $success = $file->move($upload_path, $image_full_name);
            if($success)
            {
                $data->pdf = $image_url;
            }

        }

        $data->save();

        return redirect()->back()->withSuccess('HomeWork saved successfully');
      
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
        $courses = Course::get();
        $batches = Batch::get();

        $data = HomeWork::findOrFail($id);

        return view('teacher.home_work.edit', compact('data', 'courses', 'batches'));
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
        $data = HomeWork::findOrFail($id);
        $data->teacher_id = Auth::user()->id;
        $data->course_id = $request->course_id;
        $data->batch_id = $request->batch_id;
        $data->start_date = $request->start_date;
        $data->due_date = $request->due_date;
        $data->marks = $request->marks;
        $data->description = $request->description;
        $data->status = $request->status;

        $file = $request->file('pdf');
        if($file)
        {
            $image_name= uniqid();
            $ext = strtolower($file->getClientOriginalExtension());
            $image_full_name = $image_name. '.' .$ext;
            $upload_path = 'files/home_work_file/';
            $image_url = $upload_path.$image_full_name;
            $success = $file->move($upload_path, $image_full_name);

            if($success)
            {
                $old_file = $data->pdf;
                if (file_exists($old_file)) {
                    unlink($old_file);
                }
                $data->pdf = $image_url;
            }


        }

        $data->save();

        return redirect()->back()->withSuccess('HomeWork updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $filePath = HomeWork::where('id', $id)->first();
        $file = $filePath->pdf;

        if (file_exists($file)) {
            unlink($file);
            HomeWork::where('id', $id)->delete();
        }else{
            HomeWork::where('id', $id)->delete();
        }


        return redirect()->back()->withFail('HomeWork deleted successfully');
    }
}
