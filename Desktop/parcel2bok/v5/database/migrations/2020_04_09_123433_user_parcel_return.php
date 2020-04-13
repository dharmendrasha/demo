<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserParcelReturn extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('userParcelReturn', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('userId');
            $table->text('awb');
            $table->text('addressOne');
            $table->text('addressTwo')->nullable();
            $table->text('district');
            $table->text('state');
            $table->text('country');
            $table->text('pin');
            $table->text('approvedByAdmin');
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
        Schema::dropIfExists('userParcelReturn');
    }
}
