<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSysDictTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sys_dict', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');                            // 名称
            $table->string('type');                             // 类型
            $table->string('description')->nullable();          // 描述
            $table->integer('created_user_id')->nullable();     // 创建人
            $table->integer('updated_user_id')->nullable();     // 修改人
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
        Schema::dropIfExists('sys_dict');
    }
}
