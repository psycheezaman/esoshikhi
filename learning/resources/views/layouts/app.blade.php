<!doctype html>
<html lang="en">
    <head>



    <?php
    $settings = DB::table('settings')->first();
    $sitesetting=DB::table('site_settings')->first();
    ?>


    <!-- Meta data -->
    <meta charset="UTF-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content=" esoShikhi - Online Education & Learning Courses Website" name="description">
    <meta content="esoShikhi" name="author">
    <meta name="keywords" content="esoShikhi,Digital marketing,spoken english,website design,graphics design" />

    <meta name="csrf-token" content="{{ csrf_token() }}">
        
    <!-- Favicon -->
    <link rel="icon" href="{{asset($sitesetting->fav_icon ?? '')}}" type="image/x-icon" />
    <link rel="shortcut icon" type="image/x-icon" href="{{asset($sitesetting->fav_icon ?? '')}}" />

    <!-- Title -->
    <title> esoShikhi </title>

    <!-- Bootstrap css -->
    <link id="style" href="{{ asset('frontend') }}/assets/plugins/bootstrap/css/bootstrap.min.css"
        rel="stylesheet" />

    <!-- Style css -->
    <link href="{{ asset('frontend') }}/assets/css/style.css" rel="stylesheet" />
    <link href="{{ asset('frontend') }}/assets/css/dark-style.css" rel="stylesheet" />
    <link href="{{ asset('frontend') }}/assets/css/transparent-style.css" rel="stylesheet" />
    <link href="{{ asset('frontend') }}/assets/css/skin-modes.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css">
    <!-- Font-awesome  css -->
    <link href="{{ asset('frontend') }}/assets/css/icons.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Color Skin css -->
    <link id="theme" rel="stylesheet" type="text/css" media="all"
        href="{{ asset('frontend') }}/assets/color-skins/color.css" />

</head>

<body>

    <!--Loader-->
    <div id="global-loader">
        <img src="{{ asset('frontend') }}/assets/images/loader.svg" class="loader-img" alt="img">
    </div>
    <!--/Loader-->


        <!-- Font-awesome  css -->
        <link href="{{asset('frontend')}}/assets/css/icons.css" rel="stylesheet"/>


    @yield('content')

    <body>

    @include('layouts.footer')





    <!-- Back to top -->
    <a href="#top" id="back-to-top"><i class="fa fa-long-arrow-up"></i></a>

    <!-- JQuery js-->
    <script src="{{ asset('frontend') }}/assets/js/jquery.min.js"></script>

    <!-- Bootstrap js -->
    <script src="{{ asset('frontend') }}/assets/plugins/bootstrap/js/popper.min.js"></script>
    <script src="{{ asset('frontend') }}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>

    <!--JQuery Sparkline js-->
    <script src="{{ asset('frontend') }}/assets/js/jquery.sparkline.min.js"></script>

    <!-- Circle Progress js-->
    <script src="{{ asset('frontend') }}/assets/js/circle-progress.min.js"></script>

    <!-- Star Rating-2 Js-->
    <script src="{{ asset('frontend') }}/assets/plugins/ratings-2/jquery.star-rating.js"></script>
    <script src="{{ asset('frontend') }}/assets/plugins/ratings-2/star-rating.js"></script>

    <!--Counters js-->
    <script src="{{ asset('frontend') }}/assets/plugins/counters/counterup.min.js"></script>
    <script src="{{ asset('frontend') }}/assets/plugins/counters/waypoints.min.js"></script>
    <script src="{{ asset('frontend') }}/assets/plugins/counters/numeric-counter.js"></script>

    <!--Owl Carousel js -->
    <script src="{{ asset('frontend') }}/assets/plugins/owl-carousel/owl.carousel.js"></script>

    <!--Horizontal Menu js-->
    <script src="{{ asset('frontend') }}/assets/plugins/horizontal-menu/horizontal-menu.js"></script>

    <!--JQuery TouchSwipe js-->
    <script src="{{ asset('frontend') }}/assets/js/jquery.touchSwipe.min.js"></script>

    <!--Select2 js -->
    <script src="{{ asset('frontend') }}/assets/plugins/select2/select2.full.min.js"></script>
    <script src="{{ asset('frontend') }}/assets/js/select2.js"></script>

    <!-- sticky js-->
    <script src="{{ asset('frontend') }}/assets/js/sticky.js"></script>

    <!-- pscroll bar Js-->
    <script src="{{ asset('frontend') }}/assets/plugins/pscrollbar/pscrollbar.js"></script>

    <!-- Cookie js -->
    <script src="{{ asset('frontend') }}/assets/plugins/cookie/jquery.ihavecookies.js"></script>
    <script src="{{ asset('frontend') }}/assets/plugins/cookie/cookie.js"></script>

    <!-- Scripts js-->
    <script src="{{ asset('frontend') }}/assets/js/owl-carousel.js"></script>

    <!-- Theme Color js-->
    <script src="{{ asset('frontend') }}/assets/js/themecolors.js"></script>

    <!-- Custom js-->
    <script src="{{ asset('frontend') }}/assets/js/custom.js"></script>
    <script src="{{ asset('frontend') }}/assets/js/custom-switcher.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
        crossorigin="anonymous"></script>




    <script src="{{ asset('frontend') }}/assets/js/jquery.counterup.js"></script>
    <script src="{{ asset('frontend') }}/assets/js/jquery.countdown.min.js"></script>


    @yield('script')


    <script>
        $(document).ready(function() {
            toastr.options = {
                "closeButton": true,
                "newestOnTop": true,
                "positionClass": "toast-top-center"
            };
            $('.addToCart').on('click', function() {
                let id = $(this).data('id');
                let cart_count = $('#cart-count').text();
                cart_count = parseInt(cart_count);
                // alert(cart_count)

                $.ajax({
                    url: "{{ url('/add/to/cart/') }}/" + id,
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        if (data.success) {
                            toastr.success(data.success)
                            $('#cart-count').text(cart_count + 1);
                        } else {
                            toastr.warning(data.warning)
                        }

                    }
                })
            });


        });
        $(document).on('click', 'button#delete-cart', function(e) {
            e.preventDefault();
            toastr.options = {
                "closeButton": true,
                "newestOnTop": true,
                "positionClass": "toast-top-center"
            };
            let id = $(this).attr('delete_id');
            let cart_count = $('#cart-count').text();
            cart_count = parseInt(cart_count);
            $.ajax({
                url: "{{ url('/cart-delete/') }}/" + id,
                type: "GET",
                dataType: "json",
                success: function(data) {
                    toastr.error(data.error)
                    $('#cart-count').text(cart_count - 1);
                    setTimeout(function() {
                        window.location.reload();
                    }, 1000);

                }
            })


        });
    </script>

    <script>
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
        });





        function sendOTP() {

            var phone = $('.phone').val();
console.log(phone)


            var token = $("input[name=_token]").val();
            var datastr = "phone=" + phone + "&token=" + token;

            $.ajax({
                type: "post",
                url: "<?php echo route('send-otp'); ?>",
                data: datastr,
                cache: false,
                beforeSend: function() {
                    // setting a timeout
                },
                success: function(data) {
                    console.log(data);phone
                    $('.send_otp_messahe').text(data);

                },
                error: function(jqXHR, status, err) {
                    alert(status);
                    console.log(err);
                },
                complete: function() {
                    // alert("Complete");
                }
            });

        }



    function getLesion(element){

      var token =  $("input[name=_token]").val();

      var datastr = "course_id=" + element.value + "&token=" + token; 


        if (element.value != '') { 

            $.ajax({

                type: "POST",

                url: '<?php echo route('get-lesion')?>',

                data: datastr,

                beforeSend: () => {


                },

                success: function( data ) {


                  $('.lesion_id').html(data);
                    

                }

            });

        }else {

          

        }

    }


        $.each($('.jquery-countdown'), function(index, value) {
            const noDate = $(this).data('noDate');
            


            // date format MM/DD/YYYY hh:mm:ss
            const htmlTemplate = `${!noDate ? (
                `<div class="counter__item" style="padding: 10px;text-align: center">
                    <div class="counter__item--number" style="font-weight: bold;">%D</div>
                    <div class="counter__item--text" style="font-weight: bold;">Day</div>
                </div>`) : ''}
                <div class="counter__item" style="padding: 10px;text-align: center">
                    <div class="counter__item--number" style="font-weight: bold;">%H</div>
                    <div class="counter__item--text" style="font-weight: bold;">Hour</div>
                </div>
                <div class="counter__item" style="padding: 10px;text-align: center">
                    <div class="counter__item--number" style="font-weight: bold;">%M</div>
                    <div class="counter__item--text" style="font-weight: bold;">Minute</div>
                </div>
                <div class="counter__item" style="padding: 10px;text-align: center">
                    <div class="counter__item--number" style="font-weight: bold;">%S</div>
                    <div class="counter__item--text" style="font-weight: bold;">Second</div>
                </div>
            `;
            

         
            const date = $(this).data('date');


            const counter = $(this).countdown(date, function(event) {
                $(this).html(event.strftime(htmlTemplate));

                 // var source = "http://localhost/omit_vai/course_mlm/audio/mixkit-clock-knob-spin-1062.mp3"
                 // var audio = document.createElement("audio");
                 // audio.autoplay = true;
                 // audio.load()
                 // audio.addEventListener("load", function() { 
                 //     audio.play(); 
                 // }, true);
                 // audio.src = source;


            });
            

                                                
                                                
            counter.on('finish.countdown', () => {
                $('.options input, .question-buttons button').attr("disabled", true);
                console.log('exam time over')
                setTimeout(() => {
                    location.replace('http://localhost/omit_vai/course_mlm/student/information');
                }, 5000);
            });
        });



    </script>














</body>

</html>
