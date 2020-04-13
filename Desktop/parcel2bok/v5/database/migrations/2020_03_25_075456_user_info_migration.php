<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserInfoMigration extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('userPickUPandDrop', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('awb');
            $table->text('pickUpaddressOne')->nullable();
            $table->text('pickUpAddresstwo')->nullable();
            $table->text('pickUpCity')->nullable();
            $table->text('pickupDistict')->nullable();
            $table->text('pickUpState')->nullable();
            $table->text('pickUpCountry')->nullable();
            $table->text('pickUpPin')->nullable();
            $table->text('dropaddressOne')->nullable();
            $table->text('dropAddresstwo')->nullable();
            $table->text('dropCity')->nullable();
            $table->text('dropDistict')->nullable();
            $table->text('dropState')->nullable();
            $table->text('dropCountry')->nullable();
            $table->text('dropPin')->nullable();
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
        Schema::dropIfExists('userPickUpandDrop');
    }
}
