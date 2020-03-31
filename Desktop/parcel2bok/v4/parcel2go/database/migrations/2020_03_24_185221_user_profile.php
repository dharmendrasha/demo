<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserProfile extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('userProfile', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('userid')->nullable();
            $table->text('awb')->nullable();
            $table->text('selectedOfferId')->nullable();
            $table->text('addressOne')->nullable();
            $table->text('addresstwo')->nullable();
            $table->text('district')->nullable();
            $table->text('stateProvince')->nullable();
            $table->text('country')->nullable();
            $table->text('pinZip')->nullable();
            $table->text('email')->nullable();
            $table->text('phone')->nullable();
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
        Schema::dropIfExists('userProfile');
    }
}
