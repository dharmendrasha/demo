<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class palletBook extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('palletBook', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('palletFrom');
            $table->text('palletFromPincode')->nullable();
            $table->text('palletTo');
            $table->text('palletToPincode')->nullable();
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
        Schema::dropIfExists('palletBook');
    }
}
