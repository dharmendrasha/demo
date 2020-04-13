<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CarrierServiceList extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('carrierServiceList', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('carrierId');
            $table->text('carrierName')->nullbale();
            $table->text('country');
            $table->text('state');
            $table->text('district');
            $table->text('pin');
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
        //
    }
}
