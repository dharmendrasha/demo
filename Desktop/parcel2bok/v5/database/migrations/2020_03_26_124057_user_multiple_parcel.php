<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserMultipleParcel extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('userMultipleParcel', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('awb');
            $table->text('totalQuantity');
            $table->text('parcelFrom');
            $table->text('fromPincode')->nullable();
            $table->text('to');
            $table->text('toPincode')->nullable();
            $table->text('productDetails');
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
        Schema::dropIfExists('userMultipleParcel');
    }
}
