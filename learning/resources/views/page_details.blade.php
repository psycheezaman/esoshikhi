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
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="card blog-detail">
							<div class="card-body">
								<a href="javascript:void(0);" class="text-dark"><h2 class="font-weight-semibold">{{ $item->title }}</h2></a>
								
								<div class="item7-card-desc d-flex mb-2 mt-3">
									<a href="javascript:void(0);" class="text-muted"><i class="fa fa-calendar-o me-2"></i>{{ Carbon\Carbon::parse($item->created_ay)->format('d-M-Y') }}</a>
									<div class="ms-auto">
										<!-- <a href="javascript:void(0);" class="text-muted"><i class="fa fa-comment-o me-2"></i>2 Comments</a> -->
									</div>
								</div>
								<p>{!! $item->description !!}</p>
							</div>
						</div>
				
					</div>
					
				</div>
			</div>
		</section><!--/Section-->





@stop