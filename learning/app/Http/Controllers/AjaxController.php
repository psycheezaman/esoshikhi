<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Batch;
use App\Models\Lesion;


class AjaxController extends Controller
{

    public function get_batch(Request $request)
    {
        $course_id = $request->course_id;
        $batchs  = Batch::where('course_id', $course_id)->get();
        return view('ajax.get_batch', compact('batchs'));

    }

    public function get_lesion(Request $request)
    {
        $course_id = $request->course_id;
        $lesions  = Lesion::where('course_id', $course_id)->get();
        return view('ajax.get_lesion', compact('lesions'));

    }

}
