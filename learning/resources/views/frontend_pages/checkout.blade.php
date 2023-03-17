@extends('layouts.app')

@section('content')
    <!--Section-->
    <div class="banner-1 cover-image  bg-background2 mb-5"
        data-image-src="{{ asset('frontend') }}/assets/images/banners/banner1.jpg">




        @include('layouts.header')



       


    </div>
    <section style="margin-top:100px!important">
        <?php 
           $student=Auth::user()->id; 
           $student=DB::table('users')->where('id',$student)->first();
          
        ?>
        <style>
            .personal hr{
                margin-top: 0rem !important;
                    margin-bottom: 1rem !important;
            }
            .personal h4{
                font-weight: 700;
            }
        </style>
        <div class="container">
            <div class="row">
                <div class="col-md-7 col-sm-12">
                    <div class="card p-5 personal">
                     <h4>Name: {{$student->name}}</h4>
                     <hr>
                     <h4>Address: {{$student->address}}</h4>
                     <hr>
                     <h4>Mobile: {{$student->phone}}</h4>
                     <hr>
                     <h4>Email: {{$student->email}}</h4>
     
                    </div>
                 </div>
               
                    <div class="col-md-5 col-sm-12">
                        <form action="{{route('confirm.order')}}" method="POST">
                            @csrf
                        <input type="text" name="coupon_id" value="{{$coupon ?? NULL}}"hidden>
                        <input type="text" name="quantity" value="{{$total_count ?? 1}}"hidden>
                        <input type="text" name="amount" value="{{$final_price}}"hidden>
                        
                        <div class="card order">
                          <h3 class="ps-2 pt-5">Order Summary</h3>
                          <hr>
                          <div class="pt-2 pb-4 pe-4 ps-4">
                             <div class="d-flex justify-content-between">
                                 <h5>Original price:</h5>
                                 <h5>{{$final_price+$coupon_discount}}</h5>
                             </div>
                             <div class="d-flex justify-content-between">
                                 <h5>Coupon discounts:</h5>
                                 <h5>{{$coupon_discount}}</h5>
                             </div>
                             <div class="d-flex justify-content-between">
                                 <h5>Original price:</h5>
                                 <h5>{{$final_price}}</h5>
                             </div>
                             {{-- <div>
                                <h5>Pay to</h5>
                            
                                    <select name="payment_method_id" id="payment_method" class="form-control">
                                        <option value=""selected>--Select--</option>
                                        @foreach ($payment_methods as $item)
                                        <option value="{{$item->id}}">{{$item->name}}</option>
    
                                        @endforeach
    
    
                                    </select>
                             </div> --}}
                             {{-- <div id="payment">
                                <div>
                                    <label>Payment Number</label>
                                    <input type="text" class="form-control" id="payment_number" readonly>
                                </div>
                                <div>
                                    <label>Transaction Id</label>
                                    <input type="text" class="form-control"  placeholder="Enter Transaction id" name="transaction_id">
                                </div>
                                <div>
                                    <label>Transaction Mobile Number</label>
                                    <input type="text" class="form-control"  placeholder="Enter Transaction Mobile Number" name="payment_transition_number">
                                </div>
                             
                             </div> --}}
                             <div class="d-flex justify-content-center mt-2">
                                <button type="submit" class="btn btn-success mx-auto">Confirm Order</button>
                             </div>
                          </div>
                       </div>
                    </form>
                     </div>
                
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-5">
                    <div class="card p-3">
                        <h2 class="mt-4 " style="font-weight: 600">Order Details</h2>
                    <div class="row" style="align-items: center">
                        
                        <div class="col-md-2 col-sm-3">
                            <img src="{{asset($course->image)}}"  width="150px" height="100px" alt="">
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <h4>{{$course->title}}</h4>
                        </div>
                        @if($total_count)
                        <div class="col-md-2 cols-sm-3">
                            <h4>{{$total_count}}</h4>
                        </div>
                        @else
                        <div class="col-md-2 cols-sm-3">
                            <h4>1</h4>
                        </div>
                        @endif
                        <div class="col-md-2 col-3">
                            <h4>{{$final_price}}</h4>
                        </div>

                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
@section('script')
<script>
 
</script>
<script>
       $('#payment').css("display", "none");
    //divison change
    $(document).on('change', '#payment_method', function() {
        $('#payment').css("display", "block");
        let id = $(this).val();
        // alert(id);
        $.ajax({
            method: "GET",
            url:"{{ route('get.payment.method') }}",
            data:{'id':id},
            dataType: 'json', //return data will be json
            success: function(data) {
                $('#payment_number').val(data.account_no);
               
            },
            error: function() {
            }
        });
    });
</script>


@endsection
