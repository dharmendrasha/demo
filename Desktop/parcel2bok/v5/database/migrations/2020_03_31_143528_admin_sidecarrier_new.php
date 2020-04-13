<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AdminSidecarrierNew extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('AdminCarrierNew', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('carrierName');
            $table->text('carrierUrl');
            $table->text('tarckingCarrierUrl');
            $table->text('carrierLogo');
            $table->text('MinStartingRange');
            $table->text('MinEndingRange');
            $table->text('MinPrice');
            $table->text('MidStartingRange');
            $table->text('MidEndingRange');
            $table->text('MidPrice');
            $table->text('MaxStartingRange');
            $table->text('MaxEndingRange');
            $table->text('MaxPrice');
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
        Schema::dropIfExists('AdminCarrierNew');
    }
}
