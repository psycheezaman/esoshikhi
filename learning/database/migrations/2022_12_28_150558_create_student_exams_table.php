<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentExamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('student_exams', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id');
            $table->integer('sl');
            $table->integer('course_id');
            $table->integer('lesion_id');
            $table->integer('question_id');
            $table->string('applicant_answer');
            $table->string('correct_answer');
            $table->integer('isCorrect');
            $table->integer('mark');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('student_exams');
    }
}
