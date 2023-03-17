@extends('layouts.app')

@section('content')
<style>
    .tabl tbody tr th{
        font-weight: 800!important;
    }
    .shopping-cart-detail-item {
        background-color: #F7FAFD;
        -webkit-border-radius: 8px;
        -moz-border-radius: 8px;
        border-radius: 8px;
        padding: 30px 30px 33px 30px;
        margin-bottom: 30px;
    }
    #delete-cart:hover{
        background-color:red;
        color:white;
    }
</style>
    <!--Section-->
    <div class="banner-1 cover-image  bg-background2"
        data-image-src="https://www.spruko.com/demo/eudica/Eudica/assets/images/banners/banner2.jpg">




        @include('layouts.header')



        <!--Breadcrumb-->
			<div>
				<div class="bannerimg">
					<div class="header-text mb-0" style="top: 20px !important">
						<div class="container">
							<div class="text-center text-white">
								<h1 class="">Cart</h1>
								<ol class="breadcrumb text-center">
									<li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
									<li class="breadcrumb-item" aria-current="page">Cart</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/Breadcrumb-->


    </div>
    <!--/Section-->
  <section>
    {{-- <div class="sptb bg-white"> --}}
        <div class="container">
            <div class="card-body">
                <div class="table-responsive push">
                    <table class="tabl table table-bordered table-hover text-nowrap">
                        <tbody><tr>
                            <th class="text-center"></th>
                            <th >Product Details</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Qanitiy</th>
                            <th class="text-center">Total</th>
                            <th class="text-center">Remove</th>
                        </tr>
                        {{-- @foreach ($cart as $item ) --}}
                    @if($cart)
                    <tr>
                        <td class="text-center">1</td>
                        <td>
                            <p class="font-w600 mb-1">{{$cart->name ?? ''}}</p>
                        </td>
                        <td class="text-center" id="cprice">{{$cart->price ?? ''}}</td>
                        <td class="d-flex justify-content-between">
                            <button id="minus" class="btn btn-default" style="border-radius: 50%"><i class="fa fa-minus"></i></button>
                            <input type="number" id="number-count" min="1" class="form-control text-center w-25" name="total_count" value="{{$cart->qty ?? ''}}">
                            <button id="plus" class="btn btn-default" style="border-radius: 50%"><i class="fa fa-plus"></i></button>
                        </td>
                        <td class="text-center" id="ctotal">{{$cart->price ?? ''}}</td>
                        <td class="text-center">
                            <button id="delete-cart" delete_id="{{ $cart->rowId ?? '' }}" class="btn btn-default" style="border-radius: 50%"><i class="fa fa-times"></i></button>

                        </td>
                    
                    </tr>

                    @endif
                        {{-- @endforeach --}}
                    
                        
                    </tbody></table>
                </div>
            </div>

        </div>
    {{-- </div> --}}
  <section>
    
  <section>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <div class="shopping-cart-detail-item">
                    <h3 class="widget-title font-size-20">Coupon Code</h3>
                    <div class="shopping-cart-content pt-2">
                        <p class="line-height-26">
                            To get discount apply coupon code.
                        </p>
                        <div class="contact-form-action pt-3">
                            <form action="" id="add_coupon" method="POST">
                                @csrf
                                <div class="form-group">
                                    <i class="la la-pencil input-icon"></i>
                                    <input class="form-control" type="text" name="coupon" placeholder="Enter Coupon code">
                                </div><!-- end form-group -->
                                <button type="submit" class="btn btn-secondary btn-sm text-light" id="apply">Apply code</button>
                            </form>
                        </div><!-- end contact-form-action -->
                    </div><!-- end shopping-cart-content -->
                </div>
            </div>
            <div class="col-md-2">

            </div>
            <div class="col-md-4 col-sm-12">
                <div class="shopping-cart-detail-item">
                    <h3 class="widget-title font-size-20">Cart Totals</h3>
                    <div class="shopping-cart-content pt-2">
                        <ul class="list-items">
                            <li class="d-flex align-items-center justify-content-between font-weight-semi-bold pb-2" style="font-size:15px;font-weight:700">
                                <span class="primary-color">Subtotal:</span>
                                <span  class="primary-color-3">BDT <span id="stotal">0</span></span>
                            </li>
                            <li class="d-flex align-items-center justify-content-between pb-2 font-weight-semi-bold"style="font-size:15px;font-weight:700">
                                <span class="primary-color">Discount:</span>
                                <span class="primary-color-3">BDT <span id="discount">0</span></span>
                            </li>
                            <li class="d-flex align-items-center justify-content-between pb-2  font-weight-semi-bold"style="font-size:15px;font-weight:700">
                                <span class="primary-color">Total:</span>
                                <span  class="primary-color-3">BDT <span id="final_total">0</span></span>
                            </li>
                        </ul>
                        <div class="btn-box mt-4">
                           <form action="{{route('login.checkout')}}" method="POST">
                            @csrf
                            <input type="text" id="final_price" name="final_price" hidden>
                            <input type="number" id="number-count-total" min="1" class="form-control" name="total_count" hidden>

                            <button type="submit" class="btn btn-success text-light" >Next</button>
                           </form>
                        </div>
                    </div><!-- end shopping-cart-content -->
                </div>
            </div>
        </div>
    </div>
  </section>
   
@endsection
@section('script')

<script>
    let ctotal=$('#ctotal').text();
    ctotal=parseInt(ctotal);
    if(ctotal){
        let stotal=$('#stotal').text(ctotal);
    }
    else{
        let stotal=$('#stotal').text('0');
    }
</script>
<script>
    let etotal=$('#stotal').text();
    let discount=$('#discount').text();
    discount=parseInt(discount);
    etotal=parseInt(etotal);

    let ttoal=parseInt(etotal-discount);
    // console.log(discount);
    // console.log(etotal);
    // alert(ttoal);
    $('#final_total').text(ttoal);
    $('#final_price').val(ttoal);
</script>

<script>
    $('#plus').on('click',function(){
     let cprice=$('#cprice').text();
     let discount=$('#discount').text();
     discount=parseInt(discount);
     cprice=parseInt(cprice);
      let number_count=$('#number-count').val();
      let number_counts=$('#number-count-total').val();
     number_count=parseInt(number_count);
     let count_number=$('#number-count').val(number_count+1);
     let count_numbers=$('#number-count-total').val(number_count+1);

     let update_count=$('#number-count').val();
     let update_counts=$('#number-count-total').val();

     update_count=parseInt(update_count);
    $('#ctotal').text(cprice*update_count);
     $('#stotal').text(cprice*update_count);
     $('#final_total').text(cprice*update_count-discount);
     $('#final_price').val(cprice*update_count-discount);

    })
</script>
<script>
    $('#minus').on('click',function(){
        let cprice=$('#cprice').text();
     let discount=$('#discount').text();
     discount=parseInt(discount);
     cprice=parseInt(cprice);
      let number_count=$('#number-count').val();
      let number_counts=$('#number-count-total').val();
     number_count=parseInt(number_count);
     if(number_count == 1){
        $('#number-count').val('1');
        $('#number-count-total').val('1');

     }else{
        $('#number-count').val(number_count-1);
        $('#number-count-total').val(number_count-1);

       
     let update_count=$('#number-count').val();
     let update_counts=$('#number-count-total').val();

     update_count=parseInt(update_count);
    $('#ctotal').text(cprice*update_count);
     $('#stotal').text(cprice*update_count);
     $('#final_total').text(cprice*update_count-discount);
     $('#final_price').val(cprice*update_count-discount);
     }
   

    })
</script>
<script>

$(document).on('submit', 'form#add_coupon', function(e) {
        e.preventDefault();
        toastr.options = {
                "closeButton": true,
                "newestOnTop": true,
                "positionClass": "toast-top-center"
                };
        $.ajaxSetup({
              headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
       
        $.ajax({
            url: 'coupon-submit',
            method: "POST",
            contentType: false,
            processData: false,
            data:new FormData(this),
            dataType:"json",
           
            success: function(res) {
                if(res.errorr){
                
                   toastr.error(res.errorr);
                   document.getElementById('add_coupon').reset();
                }
                if(res.success){
                    toastr.success(res.success);
                    $( "#apply" ).prop( "disabled", true );
                    $('#discount').text(res.discount);
                    let discount=$('#discount').text();
                    discount=parseInt(discount);
                    let stotal=$('#stotal').text();
                    stotal=parseInt(stotal);
                    let final_total=stotal-discount;
                   
                    $('#final_total').text(final_total);
                    $('#final_price').val(final_total);
                   document.getElementById('add_coupon').reset();
                }
                if(res.error){
                    toastr.error(res.error);
                    document.getElementById('add_coupon').reset();
                }
                // elseif(res.success){
                //     toastr.success(res.success);
                //     $('#discount').text(res.discount);
                //     document.getElementById('add_coupon').reset();
                // }
                   
                }
                
        });
        
    });
</script>
{{-- <script>
    $('#next').on('click',function(){
     let final=$('#final_total').text();
     let final_total=parseInt(final);
    //  alert(typeof(final_total));
     $.ajax({
            url:"{{route('login.checkout') }}",
            method: "GET",
            data:{'final_total':final_total},
            dataType:"json",
            success: function(res) {
                // alert(res);
                // alert('hello world')
                // alert(res.final_total)
                if(res.error){
                    // alert(res.success);
                    window.location.href = "{{ route('student-login')}}";
                }
            }   
        });
     

    })
</script> --}}
@endsection
