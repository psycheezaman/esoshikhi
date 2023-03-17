<?php

namespace App\Http\Controllers\Admin;

use App\Models\SiteSetting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Toastr;

class SiteSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data=SiteSetting::first();
        return view('admin.site-setting.index',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $sitesetting = SiteSetting::first();
        if($sitesetting){
            $sitesetting->name = $request->name;
            $sitesetting->email = $request->email;
            $sitesetting->phone = $request->phone;
            $simage = $request->file('logo');
            if($simage)
            {
                $image_name= uniqid();
                $ext = strtolower($simage->getClientOriginalExtension());
                $image_full_name = $image_name. '.' .$ext;
                $upload_path = 'images/site-setting/';
                $image_url = $upload_path.$image_full_name;
                $success = $simage->move($upload_path, $image_full_name);
                if($success)
                {
                    $sitesetting->logo = $image_url;
                }
    
            }
           
            $stimage = $request->file('fav_icon');
            if($stimage)
            {
                $image_name= uniqid();
                $ext = strtolower($stimage->getClientOriginalExtension());
                $image_full_name = $image_name. '.' .$ext;
                $upload_path = 'images/site-setting/';
                $image_url = $upload_path.$image_full_name;
                $success = $stimage->move($upload_path, $image_full_name);
                if($success)
                {
                    $sitesetting->fav_icon = $image_url;
                }
    
            }
            $sitesetting->about = $request->about;
            $sitesetting->address = $request->address;
            $sitesetting->facebook = $request->facebook;
            $sitesetting->linkedin = $request->linkedin;
            $sitesetting->twitter = $request->twitter;
            $sitesetting->instagram = $request->instagram;
            $sitesetting->youtube = $request->youtube;
            $sitesetting->whatsapp = $request->whatsapp;


            $sitesetting->total_learners = $request->total_learners;
            $sitesetting->total_graduates = $request->total_graduates;
            $sitesetting->total_countries = $request->total_countries;
            $sitesetting->total_courses = $request->total_courses;
           

            

            if($sitesetting->update()){
                Toastr::success('SiteSetting  has been Updated successfully :-)','Success');
                return redirect()->back();
            }
            else{
                Toastr::error('Something went wrong :-)','Error');
                return redirect()->back();
            }
        }
        else{
            $sitesetting=new SiteSetting();
            $sitesetting->name = $request->name;
            $sitesetting->email = $request->email;
            $sitesetting->phone = $request->phone;
            $simage = $request->file('logo');
            if($simage)
            {
                $image_name= uniqid();
                $ext = strtolower($simage->getClientOriginalExtension());
                $image_full_name = $image_name. '.' .$ext;
                $upload_path = 'images/site-setting/';
                $image_url = $upload_path.$image_full_name;
                $success = $simage->move($upload_path, $image_full_name);
                if($success)
                {
                    $sitesetting->logo = $image_url;
                }
    
            }
           
            $stimage = $request->file('fav_icon');
            if($stimage)
            {
                $image_name= uniqid();
                $ext = strtolower($stimage->getClientOriginalExtension());
                $image_full_name = $image_name. '.' .$ext;
                $upload_path = 'images/site-setting/';
                $image_url = $upload_path.$image_full_name;
                $success = $stimage->move($upload_path, $image_full_name);
                if($success)
                {
                    $sitesetting->fav_icon = $image_url;
                }
    
            }
            $sitesetting->about = $request->about;
            $sitesetting->address = $request->address;
            $sitesetting->facebook = $request->facebook;
            $sitesetting->linkedin = $request->linkedin;
            $sitesetting->twitter = $request->twitter;
            $sitesetting->instagram = $request->instagram;
            $sitesetting->youtube = $request->youtube;
            $sitesetting->whatsapp = $request->whatsapp;

            
            $sitesetting->total_learners = $request->total_learners;
            $sitesetting->total_graduates = $request->total_graduates;
            $sitesetting->total_countries = $request->total_countries;
            $sitesetting->total_courses = $request->total_courses;
           
            
            if($sitesetting->save()){
                Toastr::success('SiteSetting  has been Updated successfully :-)','Success');
                return redirect()->back();
            }
            else{
                Toastr::error('Something went wrong :-)','Error');
                return redirect()->back();
            }
        }
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
