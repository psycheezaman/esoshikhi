@extends('teacher.layouts.app')
@section('title')
    <title>Add Study Material</title>
@endsection
@section('content')


        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">

            <div class="page-content">
                <div class="container-fluid">

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-flex align-items-center justify-content-between">
                                <h4 class="mb-0 font-size-18">Add Study Material</h4>

                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

             
                    @include('teacher.layouts.notify')

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
 
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card">
                                <div class="card-body">

                                    <form method="post" action="{{route('teacher.study_material.store')}}" enctype="multipart/form-data">
                                        @csrf

                                        <div class="row">



                                            <div class="col-md-4">
                                                        
                                                <div class="form-group">
                                                    <label for="simpleinput">Course</label>
                                                    <select name="course_id" class="form-control" id="" onchange="getBatch(this)" required>

                                                        <option value="">Select</option>

                                                        @foreach($courses as $item)
                                                        <option value="{{$item->id}}">{{$item->title}}</option>
                                                        @endforeach

                                                    </select>
                                                </div>
                                                
                                            </div>


                                            <div class="col-md-4">
                                                        
                                                <div class="form-group">
                                                    <label for="simpleinput">Batch</label>
                                                    <select name="batch_id" class="form-control batch_id" id="" required>

                                                        <option value="">Select</option>

                                                       

                                                    </select>
                                                </div>
                                                
                                            </div>


                                            <div class="col-md-4">
                                                        
                                                <div class="form-group">
                                                    <label for="simpleinput">Status</label>
                                                    <select name="status" class="form-control" id="" >
                                                        <option value="1">Active</option>
                                                        <option value="0">Inactive</option>
                                                    </select>
                                                </div>
                                                
                                            </div>

                                        	<div class="col-md-12">
                                        		
		                                        <div class="form-group">
		                                            <label for="simpleinput">Title</label>
		                                            <input type="text" name="title" id="simpleinput" class="form-control" required>
		                                        </div>

                                        	</div>


                                            <div class="col-md-6">
                                                
                                                <div class="form-group">
                                                    <label for="simpleinput">Date</label>
                                                    <input type="date" name="date" id="simpleinput" class="form-control" required>
                                                </div>

                                            </div>


                                            <div class="col-md-6">
                                                
                                                <div class="form-group">
                                                    <label for="simpleinput">Youtube Embed Link</label>
                                                    <span style="color: red;">( Ex. https://www.youtube.com/embed/f1DqCalwwYc )</span>

                                                    <input type="text" name="link" id="simpleinput" class="form-control" required>
                                                </div>

                                            </div>



                                            <div class="col-md-12">
                                                
                                                <div class="form-group">
                                                    <label for="simpleinput">Description</label>
                                                 

                                                    <textarea name="description" class="form-control summernote" cols="30" rows="10"></textarea>


                                                </div>

                                            </div>




                                        </div>


                                      	<button type="submit" class="btn btn-primary waves-effect waves-light">Save</button>
                                       
                                        
                                    </form>
                                </div>
                                <!-- end card-body-->
                            </div>
                            <!-- end card -->

                        </div> <!-- end col -->

                      

                    </div>
                    <!-- end row-->






                </div> <!-- container-fluid -->
            </div>
            <!-- End Page-content -->

            @include('teacher.layouts.footer')

        </div>
        <!-- end main content-->


@stop