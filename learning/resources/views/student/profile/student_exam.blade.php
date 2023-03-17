@extends('layouts.app')

@section('content')


        <!--Section-->
        <div class="cover-image bg-background3" data-image-src="{{asset('frontend')}}/assets/images/banners/banner2.jpg">
            <!--Topbar-->


            @include('layouts.header')


            <!--Section-->
            <section>
                <div class="bannerimg">
                    <div class="header-text mb-0">
                        <div class="container">
                            <div class="text-center text-white">
                                <h1 class="">Student Exam</h1>
                                <ol class="breadcrumb text-center">
                                    <li class="breadcrumb-item"><a href="{{URL::to('/')}}">Home</a></li>
                                    <li class="breadcrumb-item active text-white" aria-current="page">Student Exam</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!--/Section-->
        </div><!--/Section-->




        <!--User Dashboard-->
        <section class="sptb">
            <div class="container">
                <div class="row">


                    @include('layouts.dashboard_sidebar')


					<div class="col-xl-9 col-lg-12 col-md-12">
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">Student Exam</h3>
							</div>
							<div class="card-body">
								<div class="ads-tabs">
									
									<div class="tab-content">
										<div class="tab-pane active table-responsive userprof-tab" id="tab1">
											
									        @if ($errors->any())
									            <div class="alert alert-danger">
									                <ul>
									                    @foreach ($errors->all() as $error)
									                        <li>{{ $error }}</li>
									                    @endforeach
									                </ul>
									            </div>
									        @endif

									        @include('student.layouts.notify')
											
									        <form method="get" action="{{ route('student.questions') }}" enctype="multipart/form-data">
									            @csrf

									            <div class="card-body">
									                <div class="row">


									                    <div class="col-sm-5 col-md-5">
									                        <div class="form-group">
									                            <label class="form-label">Enrolled Course</label>
									                            <select class="form-control select2-show-search border-bottom-1 w-100 select2-show-search" data-placeholder="Select" name="course_id" onchange="getLesion(this)" required>
									                                    <option value="">--Select--</option>

									                                    @foreach($purchases as $item)

																		<?php 
																			$course = DB::table('courses')->where('id', $item->item_id)->first();
																			$category = DB::table('categories')->where('id', $course->category_id)->first();
																		?>

									                                    <option value="{{$course->id}}">{{$course->title ?? ''}}</option>
									                                    @endforeach

									                            </select>
									                        </div>
									                    </div>

									                    <div class="col-sm-5 col-md-5">
									                        <div class="form-group">
									                            <label class="form-label">Lesion</label>
									                            <select class="form-control select2-show-search border-bottom-1 w-100 select2-show-search lesion_id" data-placeholder="Select" name="lesion_id" required>
									                                <option value="">Select</option>


									                            </select>
									                        </div>
									                    </div>

									                    <div class="col-sm-2 col-md-2">
									                        <div class="form-group">
									                            <label class="form-label">-</label>

									                            <button type="submit" class="btn btn-primary">Start Exam</button>
									                        </div>
									                    </div>


									                </div>
									            </div>


									        </form>

										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>


                </div>
            </div>
        </section><!--/User Dashboard-->





@stop