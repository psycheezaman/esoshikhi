<?php 
$settings = DB::table('settings')->first();
$sitesetting= DB::table('site_settings')->first();
$quick_links= DB::table('pages')->where('type','link')->get();
$descs= DB::table('pages')->where('type','description')->get();
?>



<!--Footer Section-->
<section>
    <footer class="bg-dark text-white">
        <div class="footer-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-sm-12">
                        <h6>About</h6>
                        <hr class="deep-purple  accent-2 mb-4 mt-0 d-inline-block mx-auto">
                        <p>{!! $sitesetting->about ?? '' !!}</p>
                    </div>
                    <div class="col-lg-3 col-sm-12">
                        <h6>Quick Links</h6>
                         <hr class="deep-purple text-primary accent-2 mb-4 mt-0 d-inline-block mx-auto">
                        <ul class="list-unstyled mb-0">
                            @foreach ($quick_links as $item)
                            <li><a href="{{$item->link}}">{{$item->title}}</a></li>
                           
                            @endforeach
                           
                        </ul>
                    </div>
                    <div class="col-lg-3 col-sm-12">
                        <h6>Pages</h6>
                         <hr class="deep-purple text-primary accent-2 mb-4 mt-0 d-inline-block mx-auto">
                        <ul class="list-unstyled mb-0">
                            @foreach ($descs as $item)
                            <li><a href="{{ route('page-details', $item->slug) }}">{{$item->title}}</a></li>
                           
                            @endforeach
                           
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-12">
                        <h6>Contact</h6>
                        <hr class="deep-purple  text-primary accent-2 mb-4 mt-0 d-inline-block mx-auto">
                        <ul class="list-unstyled mb-0">
                            <li>
                                <a href="javascript:void(0);"><i class="fa fa-home me-3 text-primary"></i>{{$sitesetting->address ?? ''}}</a>
                            </li>
                            <li>
                                <a href="javascript:void(0);"><i class="fa fa-envelope me-3 text-primary"></i>{{$sitesetting->email ?? ''}}</a></li>
                            <li>
                                <a href="javascript:void(0);"><i class="fa fa-phone me-3 text-primary"></i>{{$sitesetting->phone ?? ''}}</a>
                            </li>
                            
                        </ul>
                        <ul class="list-unstyled list-inline mt-3">
                            <li class="list-inline-item">
                              <a href="{{$sitesetting->facebook ?? ''}}"class="btn-floating btn-sm rgba-white-slight mx-1 waves-effect waves-light">
                                <i class="fa fa-facebook"></i>
                              </a>
                            </li>
                            <li class="list-inline-item">
                              <a  href="{{$sitesetting->twitter ?? ''}}" class="btn-floating btn-sm rgba-white-slight mx-1 waves-effect waves-light">
                                <i class="fa fa-twitter"></i>
                              </a>
                            </li>
                            <li class="list-inline-item">
                              <a  href="{{$sitesetting->instagram ?? ''}}" class="btn-floating btn-sm rgba-white-slight mx-1 waves-effect waves-light">
                                <i class="fa fa-instagram"></i>
                              </a>
                            </li>
                            <li class="list-inline-item">
                              <a href="{{$sitesetting->linkedin ?? ''}}" class="btn-floating btn-sm rgba-white-slight mx-1 waves-effect waves-light">
                                <i class="fa fa-linkedin"></i>
                              </a>
                            </li>
                        </ul>
                    </div>
                    {{-- <div class="col-lg-4 col-md-12">
                        
                        <h6 class="mb-0 mt-5">Payments</h6>
                        <hr class="deep-purple  text-primary accent-2 mb-2 mt-3 d-inline-block mx-auto">
                        <div class="clearfix"></div>
                        <ul class="footer-payments">
                            <li class="ps-0"><a href="javascript:;"><i class="fa fa-cc-amex" aria-hidden="true"></i></a></li>
                            <li><a href="javascript:;"><i class="fa fa-cc-visa" aria-hidden="true"></i></a></li>
                            <li><a href="javascript:;"><i class="fa fa-credit-card-alt" aria-hidden="true"></i></a></li>
                            <li><a href="javascript:;"><i class="fa fa-cc-mastercard" aria-hidden="true"></i></a></li>
                            <li><a href="javascript:;"><i class="fa fa-cc-paypal" aria-hidden="true"></i></a></li>
                        </ul>
                    </div> --}}
                </div>
            </div>
        </div>
        <div class="bg-dark  text-white p-0">
            <div class="container">
                <div class="row d-flex">
                    <div class="col-lg-12 col-sm-12 mt-3 mb-3 text-center ">
                        Copyright © 2022 <a href="javascript:void(0);" class="fs-14 text-primary">Psychee Zaman</a>All rights reserved.
                    </div>
                </div>
            </div>
        </div>
    </footer>
</section><!--/Footer Section-->
