<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTClassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('t__classes', function (Blueprint $table) {
            $table->increments('id');
            $table->smallInteger('name');
            $table->string('option');
            $table->integer('titulaire')->unsigned();
            $table->timestamps();
            $table->foreign('titulaire')->references('id')->on('professors')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('t__classes');
    }
}
