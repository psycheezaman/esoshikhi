<?php
    $user = Auth::user();
    $settings = DB::table('settings')->first();
    $sitesetting=DB::table('site_settings')->first();
?>     

<!--Topbar-->
<div class="header-main">
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-8 col-sm-4 col-7">
                    <div class="top-bar-left d-flex">
                        <div class="clearfix">
                            <ul class="socials">
                                <li>
                                    <a class="social-icon text-dark" href="{{$sitesetting->facebook ?? ''}}"><i class="fa fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a class="social-icon text-dark" href="{{$sitesetting->twitter ?? ''}}"><i class="fa fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a class="social-icon text-dark" href="{{$sitesetting->linkedin ?? ''}}"><i class="fa fa-linkedin"></i></a>
                                </li>
                                <li>
                                    <a class="social-icon text-dark" href="{{$sitesetting->instagram ?? ''}}"><i class="fa fa-instagram"></i></a>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-sm-8 col-5">
                    <div class="top-bar-right">
                        <ul class="custom">
                           @if (!Auth::user())
                           <li>
                            <a href="{{ route('register') }}" class="text-dark"><i class="fa fa-user me-1"></i> <span>Register</span></a>
                        </li>
                        <li>
                            <a href="{{route('student-login')}}" class="text-dark"><i class="fa fa-sign-in me-1"></i> <span>Login</span></a>
                        </li>
                           @else
                           <li class="dropdown">
                            <a href="javascript:void(0);" class="text-dark" data-bs-toggle="dropdown"><i class="fa fa-home me-1"></i><span> My Dashboard<i class="fa fa-caret-down text-white ms-1"></i></span></a>
                            <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                @php 
                                    $auth=Auth::user();
                                    $check=DB::table('users')->where('id',$auth->id)->first();
                                @endphp
                                @if($check->role_id ==2)
                                <a href="{{route('student.dashboard')}}" class="dropdown-item" >
                                    <i class="dropdown-icon icon icon-user"></i> My Profile
                                </a>
                                @elseif($check->role_id ==1)
                                <a href="{{route('admin.dashboard')}}" class="dropdown-item" >
                                    <i class="dropdown-icon icon icon-user"></i> My Profile
                                </a>
                                @else
                                <a href="{{route('teacher.dashboard')}}" class="dropdown-item" >
                                    <i class="dropdown-icon icon icon-user"></i> My Profile
                                </a>
                                @endif
                       
                         
                               
                            </div>
                        </li>
                           @endif
                           
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/Topbar-->

    <!--Header-->
    <header class="header-search header-logosec p-2">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="header-search-logo d-none d-lg-block">
                        <a class="header-logo" href="{{URL::to('/')}}">

                            <img src="{{asset($sitesetting->logo ?? '')}}" class="header-brand-img" alt=" logo">

                            <img src="{{asset($sitesetting->logo ?? '')}}" class="header-brand-img header-white" alt="logo">
                            <span style="font-weight: 700;color:white;font-size:26px">esoShikhi</span>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="header-icons float-lg-end">
                        <ul class="header-icons-link">
                        
                            @if (!Auth::user())
                            
                                    <li class="">
                                        <a href="{{route('student-login')}}" class="header-icons-link1"><i class="fa fa-user"></i></a>
                                    </li>

                            @else
                                @php 
                                    $auth=Auth::user();
                                    $check=DB::table('users')->where('id', $auth->id)->first();
                                @endphp

                                @if($check->role_id ==2)
                                    <li class="">
                                        <a href="{{route('student.dashboard')}}" class="header-icons-link1"><i class="fa fa-user"></i></a>
                                    </li>
                                @elseif($check->role_id ==1)
                                    <li class="">
                                        <a href="{{route('admin.dashboard')}}" class="header-icons-link1"><i class="fa fa-user"></i></a>
                                    </li>

                                @else
                                    <li class="">
                                        <a href="{{route('teacher.dashboard')}}" class="header-icons-link1"><i class="fa fa-user"></i></a>
                                    </li>
                                @endif
                            @endif








                            <li class="">
                                <a href="{{route('my.cart')}}" class="header-icons-link1"><i class="fa fa-cart-plus"></i>
                                <span class="main-badge1 badge badge-danger rounded-pill" id="cart-count">{{\Gloudemans\Shoppingcart\Facades\Cart::content()->count()}}</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header><!--/Header-->

    <!-- Mobile Header -->
    <div class="sticky">
        <div class="horizontal-header clearfix ">
            <div class="container">
                <a id="horizontal-navtoggle" class="animated-arrow"><span></span></a>
                <span class="smllogo"><a href="{{URL::to('/')}}"><img src="{{asset($sitesetting->logo ?? '')}}" width="120" alt="img"/></a></span>
                <span class="smllogo-white"><img src="{{asset($sitesetting->logo ?? '')}}" width="120" alt="img"/></span>
                <a href="tel:245-6325-3256" class="callusbtn"><i class="fa fa-phone" aria-hidden="true"></i></a>
            </div>
        </div>
    </div>
    <!-- /Mobile Header -->

    <!--Horizontal-main -->
    <div class="header-style horizontal-main bg-dark-transparent clearfix">
        <div class="horizontal-mainwrapper container clearfix">
            <nav class="horizontalMenu clearfix d-md-flex">
                <ul class="horizontalMenu-list">

                    <li aria-haspopup="true"><a href="{{URL::to('/')}}">Home</a></li>

                    <!-- <li aria-haspopup="true"><a href="#">About Us </a></li> -->

                    <li aria-haspopup="true"><a href="{{ route('courses') }}">Courses</a></li>
               
                    <li aria-haspopup="true"><a href="{{ route('contactus') }}"> Contact Us</a></li>

                    <li aria-haspopup="true" class="d-lg-none mt-5 pb-5 mt-lg-0">
                        <span><a class="btn btn-info" href="{{ route('register') }}">Register Now</a></span>
                    </li>

                </ul>
                <ul class="mb-0">
                    <li aria-haspopup="true" class="d-none d-lg-block ">
                        <span><a class="btn btn-primary  ad-post" href="{{ route('courses') }}">Enroll Now</a></span>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div><!--/Horizontal-main -->
