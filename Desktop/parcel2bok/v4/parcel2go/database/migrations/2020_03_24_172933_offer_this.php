<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class OfferThis extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('offerTable', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('companyName');
            $table->text('companyLogo');
            $table->text('valeWithProtection');
            $table->text('valueWithoutProtection');
            $table->text('areaCoverArray');
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
        Schema::dropIfExists('offerTable');
    }
}
