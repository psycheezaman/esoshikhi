@extends('layouts.app')

@section('content')
    <!--Section-->
    <div class="banner-1 cover-image  bg-background2 mb-5"
        data-image-src="{{ asset('frontend') }}/assets/images/banners/banner1.jpg">




        @include('layouts.header')



       


    </div>
    	<!--Breadcrumb-->
			<section>
				<div class="bannerimg">
					<div class="header-text mb-0">
						<div class="container">
							<div class="text-center text-white">
								<h1 class="">Orders</h1>
								<ol class="breadcrumb text-center">
									<li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
									<li class="breadcrumb-item"><a href="javascript:void(0);">My Dashboard</a></li>
									<li class="breadcrumb-item active text-white" aria-current="page">Orders</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</section><!--/Breadcrumb-->
		</div><!--/Section-->

		<!--User dashboard-->
		<section class="sptb">
			<div class="container">
				<div class="row">
					@include('layouts.dashboard_sidebar')
					<div class="col-xl-9 col-lg-12 col-md-12">
						
						<div class="card mb-0">
							<div class="card-header">
								<h3 class="card-title">Orders List</h3>
							</div>
							@if(Session::has('success'))
<p class="alert alert-info">{{ Session::get('success') }}</p>
@endif
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered table-hover text-nowrap">
										<thead>
											<tr>
												<th>Order ID</th>
												<th>Course Name</th>
												<th>Date</th>
												<th>Fees</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											@foreach ($orders as $item)
											<tr>
												
                                                <td class="text-primary">{{$item->id}}</td>
												<td>{{$item->course->title}}</td>
												<td>{{ \Carbon\Carbon::parse($item->created_at)->format('d-m-Y')}}</td>
                                                <?php 
                                                 $orderr=DB::table('orders')->where('id',$item->id)->first();
                                                ?>
												<td>{{$orderr->amount}}</td>
												<td>
													@if($item->status ==0)
                                                    <a href="javascript:void(0);" class="badge badge-warning">Pending</a>
                                                    @elseif($item->status==2)
                                                    <a href="javascript:void(0);" class="badge badge-danger">Canceled</a>

                                                    @else
                                                    <a href="javascript:void(0);" class="badge badge-success">Approved</a>
                                                    @endif
												</td>
                                              
											</tr>
											@endforeach
										</tbody>
									</table>
								</div>
								<ul class="pagination">
									<li class="page-item page-prev disabled">
										<a class="page-link" href="javascript:void(0);" tabindex="-1">Prev</a>
									</li>
									<li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a></li>
									<li class="page-item"><a class="page-link" href="javascript:void(0);">2</a></li>
									<li class="page-item"><a class="page-link" href="javascript:void(0);">3</a></li>
									<li class="page-item page-next">
										<a class="page-link" href="javascript:void(0);">Next</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/User dashboard-->

		<!--Onlinesletter-->
		<section class="sptb bg-white border-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-7 col-xl-6 col-md-12">
						<div class="sub-newsletter">
							<h3 class="mb-2"><i class="fa fa-paper-plane-o me-2"></i> Subscribe To Our Onlinesletter</h3>
							<p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</p>
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
@endsection

