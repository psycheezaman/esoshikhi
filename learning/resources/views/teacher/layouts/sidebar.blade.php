        <!-- ========== Left Sidebar Start ========== -->
        <div class="vertical-menu">

            <div data-simplebar class="h-100">

                <div class="navbar-brand-box">
                    <a href="{{ URL::to('/') }}" class="logo">
                        <h2 style="padding:5px;color:white">esoShikhi</h2>
                    </a>
                </div>

                <!--- Sidemenu -->
                <div id="sidebar-menu">
                    <!-- Left Menu Start -->
                    <ul class="metismenu list-unstyled" id="side-menu">
                        <li class="menu-title">Menu</li>

                        <li>
                            <a href="{{ route('teacher.dashboard') }}" class="waves-effect"><i class='bx bx-home-smile'></i><span>Dashboard</span></a>
                        </li>


                        <li>
                            <a href="{{ route('teacher.information') }}" class="waves-effect"><i class='bx bx-user'></i><span>Account Details</span></a>
                        </li>


                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Class</span></a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{route('teacher.online_class.create')}}">Add</a></li>
                                <li><a href="{{route('teacher.online_class.index')}}">Manage</a></li>
                            </ul>
                        </li>

           
                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Lesion</span></a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{route('teacher.lesion.create')}}">Add</a></li>
                                <li><a href="{{route('teacher.lesion.index')}}"> Manage</a></li>
                            </ul>
                        </li>

           
                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Question</span></a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{route('teacher.question.create')}}">Add</a></li>
                                <li><a href="{{route('teacher.question.index')}}"> Manage</a></li>
                            </ul>
                        </li>

                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Home Work</span></a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{route('teacher.home_work.create')}}">Add</a></li>
                                <li><a href="{{route('teacher.home_work.index')}}">Manage</a></li>
                            </ul>
                        </li>



                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Notice</span></a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{route('teacher.notice.create')}}">Add</a></li>
                                <li><a href="{{route('teacher.notice.index')}}">Manage</a></li>
                            </ul>
                        </li>


                        <li>
                            <a href="javascript: void(0);" class="has-arrow waves-effect"><i class="bx bx-map-alt"></i><span>Study Material</span></a>
                            <ul class="sub-menu" aria-expanded="false">
                                <li><a href="{{route('teacher.study_material.create')}}">Add</a></li>
                                <li><a href="{{route('teacher.study_material.index')}}">Manage</a></li>
                            </ul>
                        </li>

                      
                    </ul>
                </div>
                <!-- Sidebar -->
            </div>
        </div>
        <!-- Left Sidebar End -->