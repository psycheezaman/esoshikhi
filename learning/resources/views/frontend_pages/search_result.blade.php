{{-- <div class="tab-pane " id="tab-12"> --}}
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
       
    {{-- </div> --}}
</div>