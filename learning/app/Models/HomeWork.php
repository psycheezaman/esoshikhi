<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomeWork extends Model
{
    use HasFactory;

    public function course(){
        return $this->belongsTo('App\Models\Course', 'course_id');
    }

    public function batch(){
        return $this->belongsTo('App\Models\Batch', 'batch_id');
    }
    
}
