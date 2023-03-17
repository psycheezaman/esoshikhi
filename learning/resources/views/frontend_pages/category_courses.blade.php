@extends('layouts.app')

@section('content')
    <!--Section-->
    <div class="banner-1 cover-image  bg-background2"
        data-image-src="{{ asset('frontend') }}/assets/images/banners/banner1.jpg">




        @include('layouts.header')



        @include('layouts.header_filter')


    </div>
    <!--/Section-->

    <!--Breadcrumb-->
    <div class="bg-white border-bottom">
        <div class="container">
            <div class="page-header">
                <h4 class="page-title">Classes list</h4>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0);">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Courses</li>
                </ol>
            </div>
        </div>
    </div>
    <!--/Breadcrumb-->

    <!--Section-->
    <section class="sptb">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-8 col-md-12">
                    <!--Coursed lists-->
                    <div class="mb-lg-0">
                        <div class="">
                            <div class="item2-gl ">
                                <div class=" mb-0">
                                    <div class="">
                                        <div class="p-5 bg-white item2-gl-nav d-md-flex justify-content-between">
                                            <h6 class="mb-0 my-auto">Showing Courses</h6>
                                            {{-- <ul class="nav item2-gl-menu ms-auto my-auto">
                                                <li class=""><a href="#tab-11" class="active show"
                                                        data-bs-toggle="tab" title="List style"><i
                                                            class="fa fa-list"></i></a></li>
                                                <li><a href="#tab-12" data-bs-toggle="tab" class="" title="Grid"><i
                                                            class="fa fa-th"></i></a></li>
                                            </ul> --}}
                                            <div class="d-flex align-items-right justify-content-right">
                                                <label class="me-2 mt-2 mb-sm-1">Sort By:</label>
                                                <input type="text" name="category" id="category_id" value={{$category->id}} hidden>
                                                <select name="item" id="sort_by"class="form-control select2 select-sm w-70">
                                                   
                                                    <option value="">Sort By</option>
                                                    <option value="1">Latest</option>
                                                    <option value="2">Oldest</option>
                                                    <option value="3">Fees:Low-to-High</option>
                                                    <option value="4">Fees:Hight-to-Low</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-content">
                                    {{-- <div class="tab-pane active element-one" id="tab-11">
                                       @foreach ($courses as $item)
                                       <div class="card overflow-hidden">
                                        <div class="d-md-flex">
                                            <div class="item-card9-img">
                                                <div class="item-card9-imgs">
                                                    <a href="page-details.html"></a>
                                                    <img src="{{asset($item->image)}}" alt="img"
                                                        class="cover-image">
                                                </div>
                                                <div class="item-card9-icons">
                                                    <a href="javascript:void(0);" class="item-card9-icons1 bg-primary">
                                                        <i class="fa fa fa-heart"></i></a>
                                                    <a href="javascript:void(0);"
                                                        class="item-card9-icons1 bg-black-trasparant"> <i
                                                            class="fa fa fa-share-alt"></i></a>
                                                </div>
                                                <div class="item-overly-trans">
                                                  @if($item->offline_or_online ==0)
                                                  <a href="page-details.html" class="bg-primary">Offline</a>
                                                  @else
                                                  <a href="page-details.html" class="bg-primary">Online</a>
                                                  @endif
                                                </div>
                                            </div>
                                            <div class="card border-0 mb-0">
                                                <div class="card-body ">
                                                    <div class="item-card9">
                                                        <a href="page-details.html" class="text-dark">
                                                            <h3 class="font-weight-semibold mt-1">{{$item->title}}</h3>
                                                        </a>
                                                        <div class="mt-2 mb-2">
                                                            <a href="javascript:void(0);" class="me-4"><span
                                                                    class="text-muted fs-14"><i
                                                                        class="fa fa-briefcase text-muted me-1"></i>
                                                                    {{$item->category->name}}</span></a>
                                                           
                                                            <a href="javascript:void(0);" class="me-4"><span
                                                                    class="text-muted fs-14"><i
                                                                        class="fa fa-clock-o text-muted me-1"></i> {{ Carbon\Carbon::parse($item->created_at)->format('M d,Y') }}</span></a>
                                                        </div>
                                                        <p class="mb-0 leading-tight">{!!  substr(strip_tags($item->description), 0, 100) !!}<span>....</span></p>
                                                    </div>
                                                </div>
                                                <div class="card-footer pt-4 pb-4">
                                                    <div class="item-card9-footer d-flex">
                                                        <div class="item-card9-cost">
                                                            <h4 class="text-dark font-weight-semibold mb-0 mt-0">{{$item->price}}৳
                                                            </h4>
                                                        </div>
                                                        <div class="ms-auto">
                                                            <div class="rating-stars block">
                                                                <div class=" d-inline-flex ms-auto">
                                                                    <div class="rating-star sm block my-rating-5"
                                                                        data-stars="2s">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                       </div>
                                               
                                       @endforeach
                                       
                                   </div> --}}
                                    <div class="tab-pane search-result active" id="tab-12">
                                        <div class="row element-two">
                                           @foreach ($courses as $item)
                                           <div class="col-lg-6 col-md-12 col-xl-4">
                                                <div class="card overflow-hidden">
                                                    <div class="item-card9-img">
                                                        <div class="item-card9-imgs">
                                                            <a href="page-details.html"></a>
                                                            <img src="{{asset($item->image)}}" alt="img"
                                                                class="cover-image">
                                                        </div>
                                                        <div class="item-card9-icons">
                                                            <a href="javascript:void(0);"
                                                                class="item-card9-icons1 bg-primary"> <i
                                                                    class="fa fa fa-heart-o"></i></a>
                                                            <a href="javascript:void(0);"
                                                                class="item-card9-icons1 bg-black-trasparant"> <i
                                                                    class="fa fa fa-share-alt"></i></a>
                                                        </div>
                                                        <div class="item-overly-trans">
                                                                @if($item->offline_or_online ==0)
                                                                <a href="page-details.html" class="bg-primary">Offline</a>
                                                                @else
                                                                <a href="page-details.html" class="bg-primary">Online</a>
                                                                @endif
                                                        </div>
                                                    </div>
                                                    <div class="card-body">
                                                        <div class="item-card9">
                                                            <span class="item-card-badge"><i class="fa fa-tag me-1"></i>
                                                                Business</span>
                                                            <a href="page-details.html" class="text-dark mt-2">
                                                                <h3 class="font-weight-semibold mt-2 mb-2" style="height:100px">{{$item->title}}</h3>
                                                            </a>
                                                            <div class="item-card9-desc mb-2" style="height:20px">
                                                               
                                                                <a href="javascript:void(0);" class="me-4"><span
                                                                        class="text-muted"><i
                                                                            class="fa fa-clock-o text-muted me-1"></i> {{ Carbon\Carbon::parse($item->created_at)->format('M d,Y') }}</span></a>
                                                            </div>
                                                            <p class="mb-0" style="height: 60px">{!!  substr(strip_tags($item->description), 0, 100) !!}<span>....</span> </p>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
                                                        <div class="item-card9-footer d-flex">
                                                            <div class="item-card9-cost">
                                                                <h4 class="text-dark font-weight-semibold mb-0 mt-0">
                                                                    {{$item->price}}৳</h4>
                                                            </div>
                                                            <div class="ms-auto">
                                                                <div class="rating-stars block">
                                                                    <div class=" d-inline-flex ms-auto">
                                                                        <div class="rating-star sm block my-rating-5"
                                                                            data-stars="2s">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                   
                                           @endforeach
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="center-block text-center">
                                <ul class="pagination mb-5 mb-lg-0">
                                    <li class="page-item page-prev disabled">
                                        <a class="page-link" href="javascript:void(0);" tabindex="-1">Prev</a>
                                    </li>
                                    <li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
                                    <li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
                                    <li class="page-item page-next">
                                        <a class="page-link" href="javascript:void(0);">Next</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--/Coursed lists-->
                </div>

                <!--Right Side Content-->
                <div class="col-xl-3 col-lg-4 col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="input-group">
                                <input type="text" class="form-control br-tl-3 br-bl-3" placeholder="Search">
                                <button type="button" class="btn btn-primary br-tr-3 br-br-3">Search</button>
                            </div>
                        </div>
                    </div>
                    <div class="card mb-0">
                        <div class="card-header">
                            <h3 class="card-title">Categories</h3>
                        </div>
                        <div class="card-body">
                            <div class="" id="container">
                                <div class="filter-product-checkboxs">
                                  @foreach ($categories as $item)
                                  <label class="custom-control  mb-3">
                                        <?php 
                                        $count=count(DB::table('courses')->where('category_id',$item->id)->where('status',1)->get());
                                        ?>
                                        <span class="custom-control-label">
                                            <a href="{{route('category.course',$item->slug)}}" class="text-dark">{{$item->name}}<span
                                                    class="label label-secondary float-end">{{$count}}</span></a>
                                        </span>
                                    </label>
                                          
                                  @endforeach
                                   
                                </div>
                            </div>
                        </div>
                      
                    </div>
                </div>
                <!--/Right Side Content-->
            </div>
        </div>
    </section>
    <!--Section-->

    <!-- Onlinesletter-->
    <section class="sptb bg-white border-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-xl-6 col-md-12">
                    <div class="sub-newsletter">
                        <h3 class="mb-2"><i class="fa fa-paper-plane-o me-2"></i> Subscribe To Our Onlinesletter</h3>
                        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        </p>
                    </div>
                </div>
                <div class="col-lg-5 col-xl-6 col-md-12">
                    <div class="input-group sub-input mt-1">
                        <input type="text" class="form-control input-lg " placeholder="Enter your Email">
                        <button type="button" class="btn btn-primary btn-lg br-tr-3  br-br-3">
                            Subscribe
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/Onlinesletter-->
@endsection
@section('script')
<script>

  $('#sort_by').on('change',function(){
    let sort_by=$('#sort_by').val();
    let category_id=$('#category_id').val();
    
    $.ajax({
        url:"{{route('sort.by')}}",
        method:"GET",
        data:{sort_by:sort_by,category_id:category_id},
        success:function(data){
               $('.search-result').html(data);
        }
    })
  });
</script>

@endsection