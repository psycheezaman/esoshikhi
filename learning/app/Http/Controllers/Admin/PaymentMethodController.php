<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\PaymentMethod;
use App\Http\Controllers\Controller;

class PaymentMethodController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $payment_methods=PaymentMethod::latest()->get();
        return view('admin.payment-method.index',compact('payment_methods'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.payment-method.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $validated = $request->validate([
            'name' => 'required',
            'account_no' => 'required',
            
        ]);
        $data=new PaymentMethod();
        $data->name=$request->name;
        $data->account_no=$request->account_no;
        $data->branch=$request->branch;
        $data->status=$request->status;
        $data->save();
        return redirect()->back()->withSuccess('Payment Method saved successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $data=PaymentMethod::findOrFail($id);
        return view('admin.payment-method.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $data=PaymentMethod::findOrFail($id);
        $data->name=$request->name;
        $data->account_no=$request->account_no;
        $data->branch=$request->branch;
        $data->status=$request->status;
        $data->update();
        return redirect()->back()->withSuccess('Payment Method Updated successfully');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $data=PaymentMethod::findOrFail($id);
        $data->delete();
        return redirect()->back()->withSuccess('Payment deleted successfully');
    }
}
