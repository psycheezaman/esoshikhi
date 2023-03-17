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
                                <h1 class="">{{ $item->title }}</h1>
                                <ol class="breadcrumb text-center">
                                    <li class="breadcrumb-item"><a href="{{URL::to('/')}}">Home</a></li>
                                    <li class="breadcrumb-item active text-white" aria-current="page">{{ $item->title }}</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!--/Section-->
        </div><!--/Section-->



		<!--Section-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 col-lg-8 col-md-12">
						<div class="card blog-detail">
							<div class="card-body">
								<div class="item7-card-img">
									<img src="{{ asset($item->image) }}" alt="img" class="w-100 br-3">
									<div class="item7-card-text">
										<!-- <span class="badge badge-info">Online</span> -->
									</div>
								</div>
								<div class="item7-card-desc d-flex mb-2 mt-3">
									<a href="javascript:void(0);" class="text-muted"><i class="fa fa-calendar-o me-2"></i>{{ Carbon\Carbon::parse($item->created_ay)->format('d-M-Y') }}</a>
									<a href="javascript:void(0);" class="text-muted"><i class="fa fa-user-o text-muted me-2"></i>{{ $item->writter }}</a>
									<div class="ms-auto">
										<!-- <a href="javascript:void(0);" class="text-muted"><i class="fa fa-comment-o me-2"></i>2 Comments</a> -->
									</div>
								</div>
								<a href="javascript:void(0);" class="text-dark"><h2 class="font-weight-semibold">{{ $item->title }}</h2></a>
								<p>{!! $item->description !!}</p>
							</div>
						</div>
				
					</div>
					<!--Rightside Content-->
					<div class="col-xl-4 col-lg-4 col-md-12">
						



						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Popular Posts</h3>
							</div>
							<div class="card-body pb-3">
								<div class="rated-products">
									<ul class="vertical-scroll">
										@foreach($posts as $item)
										<li class="item">
											<div class="media m-0 mt-0 p-5">
												<a href="{{ route('blog-details', $item->slug) }}"><img class="me-4 br-3" src="{{asset($item->image)}}" alt="img"></a>
												<div class="media-body">
													<a href="{{ route('blog-details', $item->slug) }}"><h4 class="mt-2 mb-1">{{ $item->title }}</h4></a>
													<div>
				                                        <a href="#" class="text-default"><i class="fa fa-user-o text-muted me-2"></i> {{ $item->writter }}</a>
				                                        <small class="d-block text-muted">{{$item->created_at->diffForHumans()}}</small>
				                                    </div>
												</div>
											</div>
										</li>
										@endforeach
									</ul>
								</div>
							</div>
						</div>
						

					</div>
					<!--/Rightside Content-->
				</div>
			</div>
		</section><!--/Section-->





@stop