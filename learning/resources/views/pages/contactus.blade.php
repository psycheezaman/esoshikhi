@extends('layouts.app')

@section('content')



        <!--Section-->
        <div class="banner-1 cover-image  bg-background2" data-image-src="{{asset('frontend')}}/assets/images/banners/banner1.jpg">




        @include('layouts.header')




            <!--Section-->
            <section>
                <div class="bannerimg">
                    <div class="header-text mb-0">
                        <div class="container">
                            <div class="text-center text-white">
                                <h1 class="">Contact us</h1>
                                <ol class="breadcrumb text-center">
                                    <li class="breadcrumb-item"><a href="{{URL::to('/')}}">Home</a></li>
                                    <li class="breadcrumb-item active text-white" aria-current="page">Contact us</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!--/Section-->
            <br>
            <br>
            <br>


        </div><!--/Section-->
		<!--Contact-->
		<div class="sptb">
			<div class="container">
				<div class="row">
				    <div class="col-lg-6 col-xl-6 col-md-12">
						<div class="card mb-0">
							<div class="card-body">

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
								
								<form action="{{ route('submit-message') }}" method="post">
									@csrf
									
									<div class="form-group">
										<input type="text" class="form-control" id="name1" name="name" placeholder="Your Name">
									</div>
									<div class="form-group">
										<input type="email" class="form-control" id="email" name="email" placeholder="Email Coursedress">
									</div>
									<div class="form-group">
										<textarea class="form-control" name="message" rows="6" placeholder="Message"></textarea>
									</div>
									<div class="text-start">
										<button class="btn btn-primary" type="submit">Send Message</button>
									</div>

								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-xl-3  col-md-12">
					    <div class="map1">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d135885.4318636999!2d90.24508781757578!3d23.85451064496068!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755bf747c9b9269%3A0x5f5301bcd357d082!2sBANGABANDHU%20SHEIKH%20MUJIBUR%20RAHMAN%20DIGITAL%20UNIVERSITY%2C%20BANGLADESH%20(BDU)!5e0!3m2!1sen!2sbd!4v1678564294453!5m2!1sen!2sbd"
								width="600" height="380" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/Contact-->




@endsection
@section('script')


@endsection