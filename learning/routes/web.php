<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthenticationController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/', [AuthenticationController::class, 'register'])->name('register');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    if (Auth::user()->role_id == 1) {
        return redirect()->route('admin.dashboard');
    }elseif(Auth::user()->role_id == 2) {
        return redirect()->route('student.dashboard');
    }
    elseif(Auth::user()->role_id == 4) {
        return redirect()->route('teacher.dashboard');
    }else {
        return redirect()->route('login');
    }
})->name('dashboard');

Route::get('/',[HomeController::class,'home'])->name('home');
Route::get('category/{slug}',[HomeController::class,'categoryCourse'])->name('category.course');
Route::get('sort-by',[HomeController::class,'sortBy'])->name('sort.by');
Route::get('add/to/cart/{id}',[HomeController::class,'addToCart'])->name('add.to.cart');
Route::get('mycart',[HomeController::class,'myCart'])->name('my.cart');
Route::get('cart-delete/{id}',[HomeController::class,'cartDelete'])->name('cart.delete');
Route::post('coupon-submit',[HomeController::class,'couponSubmit'])->name('coupon.submit');
Route::get('course/course-details/{slug}',[HomeController::class,'courseDetails'])->name('course.details');
Route::post('logincheckout',[HomeController::class,'loginCheckout'])->name('login.checkout');
Route::get('get-payment-method',[HomeController::class,'getPaymentMethod'])->name('get.payment.method');

Route::get('checkout',[HomeController::class,'checkout'])->name('checkout');
Route::post('confirm-order',[HomeController::class,'confirmOrder'])->name('confirm.order');
Route::get('orders',[HomeController::class,'studentOrder'])->name('student.order');
Route::get('courses', [HomeController::class, 'courses'])->name('courses');


Route::get('contactus', [HomeController::class, 'contactus'])->name('contactus');
Route::post('submit-message', [HomeController::class, 'submit_message'])->name('submit-message');


Route::post('search-course', [HomeController::class, 'search_course'])->name('search-course');

Route::get('blog-details/{slug}', [HomeController::class, 'blog_details'])->name('blog-details');
Route::get('page-details/{slug}', [HomeController::class, 'page_details'])->name('page-details');




Route::get('register', [AuthenticationController::class, 'register'])->name('register');
Route::post('send-otp', [AuthenticationController::class, 'send_otp'])->name('send-otp');
Route::post('verify-otp', [AuthenticationController::class, 'verify_otp'])->name('verify-otp');
Route::get('student', [AuthenticationController::class, 'student'])->name('student');
Route::post('submit-registration', [AuthenticationController::class, 'submit_registration'])->name('submit-registration');


Route::get('student-login', [AuthenticationController::class, 'student_login'])->name('student-login');
Route::post('user-login', [AuthenticationController::class, 'user_login'])->name('user-login');


Route::group(['as'=>'admin.','prefix' => 'superadmin', 'namespace'=>'App\Http\Controllers\Admin','middleware'=>['auth','admin']], function () {
		
    Route::get('dashboard', 'DashboardController@index')->name('dashboard');

    //profile
    Route::get('profile', 'SettingController@profile')->name('profile');
    Route::post('update-profile', 'SettingController@update_profile')->name('update-profile');
    Route::get('change-password', 'SettingController@change_password')->name('change-password');
    Route::post('update-password', 'SettingController@update_password')->name('update-password');



    Route::resource('user', 'UserController');
    Route::resource('page_categories', 'PageCategoryController');
    Route::resource('page', 'PageController');
    Route::resource('course', 'CourseController');
    Route::resource('category', 'CategoryController');
    Route::resource('batch', 'BatchController');
    Route::resource('teacher', 'TeacherController');
    Route::resource('coupon','CouponController');
    Route::resource('payment-method','PaymentMethodController');
    Route::resource('order-handle','AdminOrderHandleController');
    Route::resource('site-setting','SiteSettingController');
    Route::resource('sponsore','SponsorController');
    Route::resource('post','PostController');


    
});


Route::group(['as'=>'teacher.','prefix' => 'teacher', 'namespace'=>'App\Http\Controllers\Teacher','middleware'=>['auth','teacher']], function () {

    Route::get('dashboard', 'DashboardController@index')->name('dashboard');
    Route::get('information', 'DashboardController@information')->name('information');
    Route::post('update-profile', 'DashboardController@update_profile')->name('update-profile');
    Route::post('update-password', 'DashboardController@update_password')->name('update-password');




    Route::resource('notice', 'NoticeController');
    Route::resource('study_material', 'StudyMaterialController');
    Route::resource('online_class', 'OnlineClassController');
    Route::resource('home_work', 'HomeWorkController');
    Route::resource('lesion','LesionController');
    Route::resource('question','QuestionController');


  
    Route::get('comming-soon', 'DashboardController@comming_soon')->name('comming-soon');









});




Route::group(['as'=>'student.','prefix' => 'student', 'namespace'=>'App\Http\Controllers\Student','middleware'=>['auth','student']], function () {

    Route::get('dashboard', 'DashboardController@index')->name('dashboard');
    Route::get('information', 'DashboardController@information')->name('information');
    Route::post('update-profile', 'DashboardController@update_profile')->name('update-profile');
    Route::get('change-password', 'DashboardController@change_password')->name('change-password');
    Route::post('update-password', 'DashboardController@update_password')->name('update-password');

    Route::get('my-courses', 'DashboardController@my_courses')->name('my-courses');
    Route::get('student-exam', 'DashboardController@student_exam')->name('student-exam');
    Route::get('questions', 'DashboardController@questions')->name('questions');


    Route::post('submit_answer', 'DashboardController@submit_answer')->name('submit_answer');
    Route::get('exam-result/{course_id}/{lesion_id}', 'DashboardController@exam_result')->name('exam-result');


    Route::get('result', 'DashboardController@result')->name('result');

    
    Route::get('comming-soon', 'DashboardController@comming_soon')->name('comming-soon');



});




Route::group(['as'=>'dcadmin.','prefix' => 'dcadmin', 'namespace'=>'App\Http\Controllers\DC','middleware'=>['auth','dc']], function () {
		
    Route::get('dashboard', 'DashboardController@index')->name('dashboard');
    //profile
    Route::get('profile', 'SettingController@profile')->name('profile');
    Route::post('update-profile', 'SettingController@update_profile')->name('update-profile');

});





    // Ajax
    Route::post('get-batch', 'App\Http\Controllers\AjaxController@get_batch')->name('get-batch');
    Route::post('get-lesion', 'App\Http\Controllers\AjaxController@get_lesion')->name('get-lesion');