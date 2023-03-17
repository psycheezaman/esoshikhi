@extends('layouts.app')

@section('content')
<!--Section-->
<div class="banner-1 cover-image  bg-background2"
    data-image-src="{{ asset('frontend') }}/assets/images/banners/banner1.jpg">




    @include('layouts.header')


    <section style="margin-bottom:60px">
        <div class="sptb-2 sptb-tab">
            <div class="header-text mb-0">
                <div class="container">
                    <div class="text-center text-white mb-7">
                        <h1 class="mb-1">COURSES</h1>
                        <p>Home/ Courses/ {{$data->title}}</p>
                    </div>

                </div>
            </div>
        </div>
    </section>


</div>
<!--/Section-->
<!-- <section> -->
<section class="mt-5" >
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-9 col-sm-12">
                <h4 style="font-weight:700">{{$data->title}}</h4>
                <div class="d-flex justify-content-between mt-3" style="width:200px">
                    <button class="badge badge-success border-0">Best Seller</button>
                    <div class="d-flex">
                        <i class="fa fa-star text-warning me-1" style="font-size:20px" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning me-1" style="font-size:20px" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning me-1" style="font-size:20px" aria-hidden="true"></i>
                        <i class="fa fa-star text-warning me-1" style="font-size:20px" aria-hidden="true"></i>
                        <i class="fa fa-star-o" style="font-size:20px" aria-hidden="true"></i>


                    </div>
                </div>
                <div class="d-flex justify-content-between mt-3" style="width:200px">
                    <h5><i class="fa fa-users me-3" aria-hidden="true"></i>{{$data->total_enrolled}} students enrolled
                    </h5>

                </div>
                <div class="mt-3 mb-4" style="border-radius:10px">
                    <img src="{{asset($data->image)}}" style="width:100%;height:470px;border-radius:10px;"></img>
                </div>
                <div class="card p-3">
                    <h3 style="font-weight:600" class="mb-3">Overview</h3>
                    <h4 style="font-weight:600" style="font-size:15px">Course Description</h4>
                    <p style="font-size:17px">{{$data->title}} Course Details: Total Classes: {{$data->course_duration}}
                        Class Duration- {{$data->daily_hour}} Hours. Class Room: Offline Lab Room</p>

                </div>

                <div class="card p-3">
                    <h3>Course Content</h3>
                    <p>{!! $data->description !!}</p>
                </div>
            </div>
            <div class="col-md-3 col-sm-12">
                <div class="card p-3">
                    <h3 class="text-center" style="font-weight:600">৳ {{$data->price}}</h3>
                    <a class="btn btn-success btn-block addToCart w-75 mt-2 mb-3"
                        style="margin:0 auto;border-radius:20px;color:white;font-weight:600"
                        data-id="{{$data->id}}">Enroll Course</a>
                    <h5 class="mt-3 mb-2">Includes</h5>
                    <h5 style="font-size:17px"><i class="fa fa-key me-3 mb-2" aria-hidden="true"></i>Full time access
                    </h5>
                    <h5 style="font-size:17px"><i class="fa fa-television me-3 mb-2" aria-hidden="true"></i>Access on
                        mobile and Tv</h5>
                    <h5 style="font-size:17px"><i class="fa fa-bolt me-3 mb-2" aria-hidden="true"></i>Assignments</h5>
                    <h5 style="font-size:17px"><i class="fa fa-trophy me-3" aria-hidden="true"></i>Certificate of
                        completion</h5>

                </div>
                <style>
                .features hr {
                    margin-top: 0rem !important;
                    margin-bottom: 1rem !important;
                }
                </style>
                <div class="card p-3 mt-4">
                    <h3 style="font-weight:600">Course Features</h3>
                    <div class="w-75 mt-3 features">
                        <div class="d-flex justify-content-between mb-2">
                            <h4>Lectures</h4>
                            <h4>{{$data->lectures}}</h4>
                        </div>
                        <hr>
                        </hr>

                        <div class="d-flex justify-content-between mb-2">
                            <h4>Quizzes</h4>
                            <h4>{{$data->quizzes}}</h4>
                        </div>
                        <hr>
                        </hr>
                        <div class="d-flex justify-content-between mb-2">
                            <h4>Skill level</h4>
                            <h4>{{$data->skill_level}}</h4>
                        </div>
                        <hr>
                        </hr>
                        <div class="d-flex justify-content-between mb-2">
                            <h4>Assessments</h4>
                            <h4>{{$data->assessments}}</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection