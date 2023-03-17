<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('courses', function (Blueprint $table) {
            $table->id();
            $table->text('category_id');
            $table->text('title');
            $table->text('slug');
            $table->string('image')->nullable();
            $table->integer('offline_or_online')->nullable();
            $table->integer('student_or_pro')->nullable();
            $table->integer('price')->default(0);
            $table->integer('total_enrolled')->default(0);
            $table->integer('lectures')->default(0);
            $table->integer('quizzes')->default(0);
            $table->string('skill_level')->nullable();
            $table->string('assessments')->nullable();
            $table->longText('short_description')->nullable();
            $table->longText('description')->nullable();
            $table->integer('status');
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
        Schema::dropIfExists('courses');
    }
}
