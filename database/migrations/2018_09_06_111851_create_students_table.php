<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->increments('id');
            $table->string('matricule');
            $table->string('name');
            $table->string('email')->nullable();
            $table->string('password');
            $table->date('naissance');
            $table->string('picture');
            $table->integer('class_id')->unsigned();
            $table->timestamps();
            $table->engine = 'InnoDB';
            $table->foreign('class_id')->references('id')->on('t__classes')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('students');
    }
}
