<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PaymentConfirm extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('paymentRecord', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('awb');
            $table->text('paymentMerchant');
            $table->text('paymentStatus');
            $table->text('paymentToken');
            $table->text('paymentId')->nullable();
            $table->text('payerId')->nullable();
            $table->text('extraInfo')->nullable();
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
