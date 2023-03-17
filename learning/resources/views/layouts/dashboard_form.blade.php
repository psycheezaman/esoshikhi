<div class="col-xl-9 col-lg-12 col-md-12">
    <div class="card mb-0">
        <div class="card-header">
            <h3 class="card-title">Edit Information</h3>
        </div>

        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        @include('student.layouts.notify')

        <form method="post" action="{{ route('student.update-profile') }}" enctype="multipart/form-data">
            @csrf

            <div class="card-body">
                <div class="row">


                    <div class="col-sm-4 col-md-4">
                        <div class="form-group">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" value="{{ $user->name }}" placeholder="Name">
                        </div>
                    </div>

                    <div class="col-sm-4 col-md-4">
                        <div class="form-group">
                            <label class="form-label">User ID</label>
                            <input type="text" class="form-control" value="{{ $user->user_id }}" readonly="">
                        </div>
                    </div>


                    <div class="col-sm-4 col-md-4">
                        <div class="form-group">
                            <label class="form-label">NID</label>
                            <input type="text" name="nid" value="{{ $user->nid }}" class="form-control" placeholder="NID">
                        </div>
                    </div>


                    <div class="col-sm-6 col-md-6">
                        <div class="form-group">
                            <label class="form-label">Father's Name</label>
                            <input type="text" name="father_name" value="{{ $user->father_name }}" class="form-control" placeholder="Father's Name">
                        </div>
                    </div>

                    <div class="col-sm-6 col-md-6">
                        <div class="form-group">
                            <label class="form-label">Mother's Name</label>
                            <input type="text" name="mother_name" value="{{ $user->mother_name }}" class="form-control" placeholder="Mother's Name">
                        </div>
                    </div>


                    <div class="col-sm-12 col-md-12">
                        <div class="form-group">
                            <label class="form-label">Address</label>
                            <input type="text" name="address" value="{{ $user->address }}" class="form-control" placeholder="Address">
                        </div>
                    </div>

                    <div class="col-sm-4 col-md-4">
                        <div class="form-group">
                            <label class="form-label">District</label>
                            <select class="form-control select2-show-search  w-100 select2-show-search" data-placeholder="Select" name="district_id" required>
                                <optgroup label="District">
                                    <option value="">--Select--</option>

                                    @foreach($districts as $item)
                                    <option value="{{$item->id}}" @php if ($user->district_id == $item->id) { echo "selected"; } @endphp>{{$item->name}}</option>
                                    @endforeach

                                </optgroup>
                            </select>
                        </div>
                    </div>

                    <div class="col-sm-4 col-md-4">
                        <div class="form-group">
                            <label class="form-label">Thana/Upazilla</label>
                            <select class="form-control select2-show-search  w-100 select2-show-search" data-placeholder="Select" name="thana_id" required>
                                <optgroup label="Upazilla">
                                    <option value="">--Select--</option>

                                    @foreach($thanas as $item)
                                    <option value="{{$item->id}}"  @php if ($user->thana_id == $item->id) { echo "selected"; } @endphp>{{$item->name}}</option>
                                    @endforeach

                                </optgroup>
                            </select>
                        </div>
                    </div>


                    <div class="col-sm-4 col-md-4">
                        <div class="form-group">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control" name="email" value="{{ $user->email }}" placeholder="Number">
                        </div>
                    </div>
               
              
                    <div class="col-md-12">
                        <div class="form-group mb-0">
                            <label class="form-label">Upload Image</label>
                            <div class="input-group file-browser">
                                <input class="form-control" type="file" name="image" placeholder="">


                            </div>

                            <a href="{{asset($user->image)}}" target="_blank"><img src="{{asset($user->image)}}" class="mt-2" alt="user" style="width: 80px;height: 80px;object-fit: cover;"></a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <button type="submit" class="btn btn-primary">Updated Profile</button>
            </div>


        </form>

    </div>
</div>