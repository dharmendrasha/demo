<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserContactInfo extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('userInfoContact', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('awb');
            $table->text('contactPhoneNumber')->nullable();
            $table->text('contactEmail')->nullable();
            $table->text('contactTimingFrom')->nullable();
            $table->text('contactTimingTo')->nullable();
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
        Schema::dropIfExists('userInfoContact');
    }
}
