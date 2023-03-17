<?php

namespace App\Http\Controllers\Teacher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\District;
use App\Models\Thana;
use App\Models\User;
use Auth;
use Hash;

class DashboardController extends Controller
{
    public function index()
    {
        $user = Auth::user();
        return view('teacher.dashboard', compact('user'));
    }

    public function information()
    {
        $user = Auth::user();
        $districts = District::get();
        $thanas = Thana::get();
        
        return view('teacher.profile.information', compact('user', 'districts', 'thanas'));
    }

    public function update_profile(Request $request){
        $this->validate($request, [
            'name' => 'required|min:3|max:50',
            'district_id' => 'required',
            'thana_id' => 'required',

        ]);

        $data = User::find(Auth::user()->id);
        $data->name = $request->name;
        $data->address = $request->address;
        $data->district_id = $request->district_id;
        $data->thana_id = $request->thana_id;
        $data->email = $request->email;
        $data->Update();


        return redirect()->back()->withSuccess('Data updated successfully');


    }

   public function update_password(Request $request)
    {


        $data = User::where('id', Auth::user()->id)->first();
        if($request->current_password){
            
            $this->validate($request, [
                'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
                'password_confirmation' => 'min:6'
            ]);
            if (!(Hash::check($request->get('current_password'), $data->password))) {
                return redirect()->back()->withFail('Current Password does not match');
            }
            $data->password = Hash::make($request->password);
            $data->password_str = $request->password;
        }
        $data->save();

        return redirect()->back()->withSuccess('Password changed successfully');



    }

    public function comming_soon()
    {
        return view('teacher.comming_soon');
    }


}
