

    <!-- ========== Left Sidebar Start ========== -->
    <div class="vertical-menu">

        <div data-simplebar class="h-100">

            <div class="navbar-brand-box">
                <a href="{{ URL::to('/') }}" class="logo">
                    <h3>esoShikhi</h3>
                </a>
            </div>

            <!--- Sidemenu -->
            <div id="sidebar-menu">
                <!-- Left Menu Start -->
                <ul class="metismenu list-unstyled" id="side-menu">
                    <li class="menu-title">Menu</li>

                    <li>
                        <a href="{{ route('dashboard') }}" class="waves-effect"><i class='bx bx-home-smile'></i><span>Dashboard</span></a>
                    </li>


                    {{-- <li>
                        <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>User</span></a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li><a href="{{route('admin.user.index')}}">Manage</a></li>
                        </ul>
                    </li> --}}
           

                    <li>
                        <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Category</span></a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li><a href="{{route('admin.category.create')}}">Add</a></li>
                            <li><a href="{{route('admin.category.index')}}"> Manage</a></li>
                        </ul>
                    </li>

           
                    <li>
                        <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Course</span></a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li><a href="{{route('admin.course.create')}}">Add</a></li>
                            <li><a href="{{route('admin.course.index')}}"> Manage</a></li>
                        </ul>
                    </li>


           

                    <li>
                        <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Batch</span></a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li><a href="{{route('admin.batch.create')}}">Add</a></li>
                            <li><a href="{{route('admin.batch.index')}}"> Manage</a></li>
                        </ul>
                    </li>

           
                    <li>
                        <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Teacher</span></a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li><a href="{{route('admin.teacher.create')}}">Add</a></li>
                            <li><a href="{{route('admin.teacher.index')}}"> Manage</a></li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Coupon</span></a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li><a href="{{route('admin.coupon.create')}}">Add</a></li>
                            <li><a href="{{route('admin.coupon.index')}}"> Manage</a></li>
                        </ul>
                    </li>
                    {{-- <li>
                        <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Payment Method</span></a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li><a href="{{route('admin.payment-method.create')}}">Add</a></li>
                            <li><a href="{{route('admin.payment-method.index')}}"> Manage</a></li>
                        </ul>
                    </li> --}}

                    <li>
                        <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Site Setting</span></a>
                        <ul class="sub-menu" aria-expanded="false">
                         
                            <li><a href="{{route('admin.site-setting.index')}}">Manage</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Course Order</span></a>
                        <ul class="sub-menu" aria-expanded="false">
                           
                            <li><a href="{{route('admin.order-handle.index')}}"> Manage</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Pages</span></a>
                        <ul class="sub-menu" aria-expanded="false">
                            <li><a href="{{route('admin.page.create')}}">Add</a></li>
                            <li><a href="{{route('admin.page.index')}}"> Manage</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- Sidebar -->
        </div>
    </div>
    <!-- Left Sidebar End -->