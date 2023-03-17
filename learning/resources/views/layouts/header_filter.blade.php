<?php 
    $categories = App\Models\Category::where('status', 1)->get();
?>            

            <!--Section-->
            <section>
                <div class="sptb-2 sptb-tab">
                    <div class="header-text mb-0">
                        <div class="container">
                            <div class="text-center text-white mb-7">
                                <h1 class="mb-1">We Ensure You A Smart Leaning Platform </h1>
                                <p>Grow your creative thinking and corroborative learniing skills through "esoShikhi" .</p>
                            </div>
                            <div class="row">
                                <div class="col-xl-10 col-lg-12 col-md-12 d-block mx-auto">
                                    <div class="search-background bg-transparent">
                                        <form action="{{ route('search-course') }}" method="post">
                                                @csrf

                                        <div class="form row no-gutters">

                                            
                                                
                                                <div class="form-group  col-xl-5 col-lg-3 col-md-12 mb-0 bg-white ">
                                                    <input type="text" class="form-control input-lg br-tr-md-0 br-br-md-0" id="text4" name="name" placeholder="Search Courses.....">
                                                </div>
                                                <div class="form-group col-xl-5 col-lg-3 col-md-12 select2-lg  mb-0 bg-white">
                                                    <select class="form-control select2-show-search  border-bottom-0" data-placeholder="Select Category" name="category_id">
                                                        <optgroup label="Categories">
                                                            <option>Select</option>

                                                            @foreach($categories as $category)
                                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                                            @endforeach

                                                        </optgroup>
                                                    </select>
                                                </div>
                                                <div class="col-xl-2 col-lg-3 col-md-12 mb-0">

                                                    <button  class="btn btn-lg btn-block btn-primary br-tl-md-0 br-bl-md-0"> Search </button>
                                                </div>



                                        </div>
                                            </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section><!--/Section-->


