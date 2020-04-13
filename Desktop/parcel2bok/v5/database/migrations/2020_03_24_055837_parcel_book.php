<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ParcelBook extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('parcelBook', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('parcelFrom');
            $table->text('parcelFromPincode')->nullable();
            $table->text('parcelTo');
            $table->text('parcelToPincode')->nullable();
            $table->text('parcelWeight');
            $table->text('awbNumber');
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
        Schema::dropIfExists('parcelBook');
    }
}
