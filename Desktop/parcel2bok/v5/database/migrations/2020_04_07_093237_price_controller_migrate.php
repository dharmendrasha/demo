<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PriceControllerMigrate extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('carrierPriceManage', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('carrierId');
            $table->text('carrierName');
            $table->text('carrierArea');
            $table->text('AreaPincodes');
            $table->text('weightMeasurements')->nullable();
            $table->text('priceByArea');
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
        Schema::dropIfExists('carrierPriceManage');
    }
}
