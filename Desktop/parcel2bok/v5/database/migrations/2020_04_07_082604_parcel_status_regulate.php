<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ParcelStatusRegulate extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('parcelStatusRegulate', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('awb');
            $table->text('from')->nullable();
            $table->text('to')->nullble();
            $table->text('message');
            $table->text('By');
            $table->text('userType');
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
        Schema::dropIfExists('parcelStatusRegulate');
    }
}
