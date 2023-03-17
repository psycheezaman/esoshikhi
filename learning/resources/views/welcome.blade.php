@extends('layouts.app')

@section('content')




        <!--Section-->
        <div class="banner-1 cover-image  bg-background2" data-image-src="{{asset('frontend')}}/assets/images/banners/banner1.jpg">




        @include('layouts.header')



        @include('layouts.header_filter')


        </div><!--/Section-->




        <!--Section-->
        <section class="sptb bg-white">
            <div class="container">
                <div class="section-title center-block text-center">
                    <h2>Categories</h2>
                    <span class="sectiontitle-design"><span class="icons"></span></span>
                </div>
                <div class="item-all-cat center-block text-center education-categories">
                    <div class="row">
                        @foreach ($categories as $item)
                        <div class="col-lg-2 col-md-4 col-sm-6">
                            <div class="item-all-card text-dark text-center">
                                <a href="{{route('category.course',$item->slug)}}"></a>
                                <div class="iteam-all-icon">
                                    <img src="{{asset($item->icon)}}" style="width:50px;height:50px"></img>
                                </div>
                                <div class="item-all-text mt-3">
                                    <h5 class="mb-0" style="height:30px">{{$item->name}}</h5>
                                </div>
                            </div>
                        </div>
                        @endforeach
                       
                       
                    </div>
                </div>
            </div>
        </section><!--/Section-->







        <!--Section-->
        <section class="sptb ">
            <div class="container">
                <div class="section-title center-block text-center">
                    <h2>Our Courses</h2>
                    <span class="sectiontitle-design"><span class="icons"></span></span>
                </div>
                <div id="myCarousel1" class="owl-carousel owl-carousel-icons2">
      
                   @foreach ($courses as $item)
                   <div class="item">
                    <div class="card mb-0 overflow-hidden">
                        <div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>
                        <div class="item-card2-img" style="height: 184px">
                            <a href="{{route('course.details',$item->slug)}}"></a>
                            <img src="{{asset($item->image)}}" alt="img" class="cover-image">
                            <div class="item-overly-trans">
                                <div class="rating-stars d-flex">
                                    <span class="text-white me-1 ps-1">4.3</span>
                                    <div class=" d-inline-flex ms-auto">
                                        <div class="rating-star sm block my-rating-5" data-stars="2s">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item-card2-icons">
                            <a href="{{route('course.details',$item->slug)}}" class="item-card2-icons-l"> <i class="fa fa-share-alt"></i></a>
                            <a href="{{route('course.details',$item->slug)}}" class="item-card2-icons-l "> <i class="fa fa-heart-o"></i></a>
                        </div>
                        <div class="card-body">
                            <div class="item-card2">
                                <div class="item-card2-desc">
                                    <div class="item-card2-text mb-3">
                                        <a href="{{route('course.details',$item->slug)}}" class="text-dark"><h4 class="mb-2">{{$item->title}}</h4></a>
                                    </div>
                                    <p class="">{!!  substr(strip_tags($item->description), 0, 100) !!}<span>....</span></p>
                                    <ul class="mb-0">
                                        <li><a href="javascript:void(0);" class="icons"><i class="icon icon-location-pin  me-1"></i>  Bangladesh</a></li>
                                        <li><a href="javascript:void(0);" class="icons"><i class="icon icon-event  me-1"></i> {{$item->created_at->diffForHumans()}}</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="item-card2-footer">
                                <a class="btn btn-outline-light"><span class="font-weight-bold"><i class="fa fa-calendar"></i> :</span>{{$item->course_duration}} Months</a>
                                <a class="btn btn-primary text-white float-end"><span class="font-weight-bold"><i class="fa fa-clock-o"></i> :</span> {{$item->daily_hour}} Hours</a>
                            </div>
                        </div>
                    </div>
                </div>
                   @endforeach
                    
                </div>
            </div>
        </section><!--/Section-->

        <!--Section-->
        <section class="sptb">
            <div class="container">
                <div class="section-title center-block text-center">
                    <h2>Up Coming Classes</h2>
                    <span class="sectiontitle-design"><span class="icons"></span></span>
                    <!-- <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p> -->
                </div>
                <div class="panel panel-primary">
                    <div class="">
                        <div class="tabs-menu ">
                            <!-- Tabs -->
                            <ul class="nav panel-tabs eductaional-tabs mb-6">
                                <li><a href="#tab4" data-bs-toggle="tab" class="">Online Courses</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="tab-content">
                            
                            <div class="tab-pane active show" id="tab1">
                                <div class="row">
                                    @foreach ($courses as $item)
                                        <div class="col-xl-4 col-md-6">
                                        <div class="card overflow-hidden">
                                            <div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>

                                            <div class="item-card7-img">
                                                <div class="item-card7-imgs" style="height: 241px;">
                                                    <a href="{{route('course.details',$item->slug)}}"></a>
                                                    <img src="{{asset($item->image)}}" alt="img" class="cover-image">
                                                </div>
                                                <div class="item-card7-overlaytext">
                                                    <a href="{{route('course.details',$item->slug)}}" class="text-white"> {{$item->category->name}}</a>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="item-card7-desc">
                                                    <div class="item-card7-text">
                                                        <a href="{{route('course.details',$item->slug)}}" class="text-dark"><h3 class="font-weight-semibold" style="height:70px">{{$item->title}}</h3></a>
                                                    </div>
                                                    <ul class="d-flex mb-2">
                                                        <li class=""><a href="javascript:void(0);" class="icons text-muted"><i class="icon icon-location-pin  me-1"></i> Bangladesh</a></li>
                                                        <li><a href="javascript:void(0);" class="icons text-muted"><i class="icon icon-event  me-1"></i> {{$item->created_at->diffForHumans()}}</a></li>
                    
                                                    </ul>
                                                    <p class="mb-0">{!!  substr(strip_tags($item->description), 0, 100) !!}<span>....</span></p>
                                                </div>
                                            </div>
                                            <div class="card-body p-4 ps-5">
                                                <a class="me-4"><span class="font-weight-bold">Duration :</span> <span class="text-muted">{{$item->course_duration}} Months</span></a>
                                                <a class="me-4 float-end"><span class="font-weight-bold">Daily :</span><span class="text-muted">{{$item->daily_hour}} Hours </span></a>
                                            </div>
                                            <div class="card-body">
                                                <a  class="btn btn-primary btn-block text-light addToCart" data-id="{{$item->id}}">Enroll Course</a>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                   
                                </div>
                            </div>

                 
                              <div class="tab-pane" id="tab2">
                                <div class="row">
                                    @foreach ( $offline_courses as $item)
                                        <div class="col-xl-4 col-md-6">
                                        <div class="card overflow-hidden">
                                            <div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>

                                            <div class="item-card7-img">
                                                <div class="item-card7-imgs" style="height: 184px;">
                                                    <a href="{{route('course.details',$item->slug)}}"></a>
                                                    <img src="{{asset($item->image)}}" alt="img" class="cover-image">
                                                </div>
                                                <div class="item-card7-overlaytext">
                                                    <a href="{{route('course.details',$item->slug)}}" class="text-white"> {{$item->category->name}}</a>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="item-card7-desc">
                                                    <div class="item-card7-text">
                                                        <a href="{{route('course.details',$item->slug)}}" class="text-dark"><h3 class="font-weight-semibold" style="height:70px">{{$item->title}}</h3></a>
                                                    </div>
                                                    <ul class="d-flex mb-2">
                                                        <li class=""><a href="javascript:void(0);" class="icons text-muted"><i class="icon icon-location-pin  me-1"></i> Bangladesh</a></li>
                                                        <li><a href="javascript:void(0);" class="icons text-muted"><i class="icon icon-event  me-1"></i> {{$item->created_at->diffForHumans()}}</a></li>
                    
                                                    </ul>
                                                    <p class="mb-0">{!!  substr(strip_tags($item->description), 0, 100) !!}<span>....</span></p>
                                                </div>
                                            </div>
                                            <div class="card-body p-4 ps-5">
                                                <a class="me-4"><span class="font-weight-bold">Duration :</span> <span class="text-muted">{{$item->course_duration}} Months</span></a>
                                                <a class="me-4 float-end"><span class="font-weight-bold">Daily :</span><span class="text-muted">{{$item->daily_hour}} Hours </span></a>
                                            </div>
                                            <div class="card-body">
                                                <a  class="btn btn-primary btn-block addToCart text-light" data-id="{{$item->id}}">Enroll Course</a>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                   
                                </div>
                            </div>
                            
                            <div class="tab-pane" id="tab4">
                                <div class="row">
                                    @foreach ( $online_courses as $item)
                                        <div class="col-xl-4 col-md-6">
                                        <div class="card overflow-hidden">
                                            <div class="power-ribbon power-ribbon-top-left text-warning"><span class="bg-warning"><i class="fa fa-bolt"></i></span></div>

                                            <div class="item-card7-img">
                                                <div class="item-card7-imgs">
                                                    <a href="{{route('course.details',$item->slug)}}"></a>
                                                    <img src="{{asset($item->image)}}" alt="img" class="cover-image">
                                                </div>
                                                <div class="item-card7-overlaytext">
                                                    <a href="{{route('course.details',$item->slug)}}" class="text-white"> {{$item->category->name}}</a>
                                                    <h4  class="font-weight-semibold mb-0">{{$item->price}}৳</h4>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="item-card7-desc">
                                                    <div class="item-card7-text">
                                                        <a href="{{route('course.details',$item->slug)}}" class="text-dark"><h3 class="font-weight-semibold" style="height:70px">{{$item->title}}</h3></a>
                                                    </div>
                                                    <ul class="d-flex mb-2">
                                                        <li class=""><a href="javascript:void(0);" class="icons text-muted"><i class="icon icon-location-pin  me-1"></i> Bangladesh</a></li>
                                                        <li><a href="javascript:void(0);" class="icons text-muted"><i class="icon icon-event  me-1"></i> {{$item->created_at->diffForHumans()}}</a></li>
                    
                                                    </ul>
                                                    <p class="mb-0">{!!  substr(strip_tags($item->description), 0, 100) !!}<span>....</span></p>
                                                </div>
                                            </div>
                                            <div class="card-body p-4 ps-5">
                                                <a class="me-4"><span class="font-weight-bold">Duration :</span> <span class="text-muted">{{$item->course_duration}} Months</span></a>
                                                <a class="me-4 float-end"><span class="font-weight-bold">Daily :</span><span class="text-muted">{{$item->daily_hour}} Hours </span></a>
                                            </div>
                                            <div class="card-body">
                                                <a  class="btn btn-primary btn-block addToCart text-light" data-id="{{$item->id}}">Enroll Course</a>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                   
                                </div>
                            </div>
                          
                        </div>
                    </div>
                </div>
            </div>
        </section><!--/Section-->

        <!--Section-->
        <section>
            <div class="cover-image sptb bg-background-color text-white" data-image-src="{{asset('frontend')}}/assets/images/banners/banner3.jpg">
                <div class="content-text mb-0">
                    <div class="container">
                        <div class="section-title center-block text-center">
                            <h2>Our Courses</h2>
                            <span class="sectiontitle-design"><span class="icons"></span></span>
                            <!-- <p class="text-white-50">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p> -->
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="row">

                                    @foreach($courses->take(3) as $item)
                                    <div class="col-md-12">
                                        <div class="widgets-cards mb-5">
                                            <div class="d-flex">
                                                <div class="widgets-cards-icons">
                                                    <div class="wrp counter-icon1 me-5">
                                                        <i class="fe fe-wifi"></i>
                                                    </div>
                                                </div>
                                                <div class="widgets-cards-data">
                                                    <div class="text-wrapper">
                                                        <h4><a href="javascript:void(0);" class="text-white fs-25"> {{ $item->title }} </a></h4>
                                                        <p class="text-white mt-2 mb-0">
                                                            {{ Str::limit($item->short_description, 120) }}
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach

                                </div>
                            </div>
                            <div class="col-lg-6 mrt-sm-2">
                                <div class="clients-img ">

                                    @foreach($courses->take(3) as $item)
                                    <img src="{{asset($item->image)}}" alt="img" class="bg-white br-3 p-1" style="height: 350px">
                                    @endforeach

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!--/Section-->
@endsection
@section('script')
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>

{{-- <script>

$(document).ready(function() {
     
    $('.addToCart').on('click',function(){
        let id=$(this).data('id');
        let cart_count=$('#cart-count').val();
        alert(cart_count);
    //     $.ajax({
    //     url:"{{url('/add/to/cart/')}}/"+id,
    //     type:"GET",
    //     dataType:"json",
    //     success:function(data){
    //            alert(data.success)
    //            $('#cart-count').val(cart_count+1);
    //     }
    // })
    });
   
        // $.ajax({
        //     url: '/parties-create',
        //     method: "POST",
        //     contentType: false,
        //     processData: false,
        //     data: fd,
        //     dataType:"json",
        //     beforeSend: function() {
        //         $(document).find('span.error-text').text('');
        //     },
        //     success: function(res) {
        //         if (res.status == 200) {
        //             $('#party-modal').modal('hide');

        //             Swal.fire(
        //                 'Added',
        //                 'Party  Added Successfully!',
        //                 'success'
        //             )
        //             setTimeout(function() {
        //                 window.location.reload();
        //             }, 2000);


        //         } else if (res.status === 400) {
        //             $.each(res.errors, function(key, err_value) {
        //                 $('span.' + key + '_error').text(err_value[0]);
        //             });
        //         }

        //     }
        // });

    });
</script> --}}


@endsection