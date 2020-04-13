<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class OperationalAreas extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('operationalAreas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('country');
            $table->text('flag');
            $table->text('state')->nullable();
            $table->text('district')->nullable();
            $table->text('pin')->nullable();
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
        Schema::dropIfExists('operationalAreas');
    }
}
