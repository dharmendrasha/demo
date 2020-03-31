<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserStepsList extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('userSteps', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('userId');
            $table->text('awbNumber')->unique();
            $table->text('totalSteps');
            $table->text('stepsComplete');
            $table->text('isMultipleParcel')->nullable();
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
        Schema::dropIfExists('userSteps');
    }
}
