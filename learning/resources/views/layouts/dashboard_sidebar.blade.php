<div class="col-xl-3 col-lg-12 col-md-12">

    <div class="card">
        <div class="card-header">
            <h3 class="card-title">My Dashboard</h3>
        </div>
        <div class="card-body text-center item-user">
            <div class="profile-pic">
                <div class="profile-pic-img">
                    <span class="bg-success dots" data-bs-toggle="tooltip" data-bs-placement="top" title="online"></span>

                    @if($user->image)

                    <img src="{{asset($user->image)}}" class="brround" alt="user" style="    width: 80px;height: 80px;object-fit: cover;">

                    @else

                    <img src="{{asset('frontend')}}/assets/images/users/female/25.jpg" class="brround" alt="user">

                    @endif

                </div>
                <a href="{{ route('student.information') }}" class="text-dark"><h4 class="mt-3 mb-0 font-weight-semibold"> {{ $user->name }} </h4></a>

                <span style="font-size: 15px;">( ID: {{ $user->user_id }} )</span>
            </div>
        </div>
        <aside class="doc-sidebar my-dash">
            <div class="app-sidebar__user clearfix">
                <ul class="side-menu">


                    <li>
                        <a class="side-menu__item" href="{{ route('student.information') }}"><i class="typcn typcn-edit fs-20"></i><span class="side-menu__label ms-2">Edit Profile</span></a>
                    </li>
                	
                    <li>
                        <a class="side-menu__item" href="{{ route('student.change-password') }}"><i class="typcn typcn-edit fs-20"></i><span class="side-menu__label ms-2">Change Password</span></a>
                    </li>


                    <li>
                        <a class="side-menu__item" href="{{ route('student.my-courses') }}"><i class="typcn typcn-briefcase fs-20"></i><span class="side-menu__label ms-2">My Courses</span></a>
                    </li>

                    <li>
                        <a class="side-menu__item" href="{{ route('student.student-exam') }}"><i class="typcn typcn-pen fs-20"></i><span class="side-menu__label ms-2">Exam</span></a>
                    </li>

                    <li>
                        <a class="side-menu__item" href="{{ route('student.result') }}"><i class="typcn typcn-pen fs-20"></i><span class="side-menu__label ms-2">Result</span></a>
                    </li>

                    <li>
                        <a class="side-menu__item" href="{{route('student.order')}}"><i class="typcn typcn-shopping-cart fs-20"></i><span class="side-menu__label ms-2">Orders</span></a>
                    </li>

                    <li>
                        <a class="side-menu__item" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="typcn typcn-power-outline fs-20"></i><span class="side-menu__label ms-2">Logout</span></a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            {{ csrf_field() }}
                        </form>
                    </li>

                </ul>
            </div>
        </aside>
    </div>

</div>
