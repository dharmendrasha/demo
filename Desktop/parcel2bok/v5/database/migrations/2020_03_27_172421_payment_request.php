<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PaymentRequest extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('paymentRequest', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('awb');
            $table->text('paymentToken');
            $table->text('paymentCommand')->nullable();
            $table->text('paymentMerchant');
            $table->text('paymentAmount');
            $table->text('currency');
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
