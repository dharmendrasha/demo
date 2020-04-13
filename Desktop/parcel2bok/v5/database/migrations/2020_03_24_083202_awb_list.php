<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AwbList extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('awbList', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('userId');
            $table->text('awbNumber');
            $table->text('awbBookedBy');
            $table->text('awbStatus');
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
        Schema::dropIfExists('awbList');
    }
}
