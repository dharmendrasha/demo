<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PaymentMetods extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('paymentMethods', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('paymentGatewayName');
            $table->text('paymentGatewayLinkLive')->nullable();
            $table->text('paymentGatewayAppName')->nullable();
            $table->text('paymentGatewayLiveAccount')->nullable();
            $table->text('paymentGatewayRedirectLink')->nillable();
            $table->text('paymentGatewaySecretCode')->nillable();
            $table->text('paymentGatewayMerchantCode')->nillable();
            $table->text('paymentGatewayCurrency')->nullable();
            $table->text('paymentGatewayAdditionalData')->nullable();
            $table->text('paymentGatewayTested')->nullable();
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
