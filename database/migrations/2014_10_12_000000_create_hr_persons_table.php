<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHrPersonsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hr_persons', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->comment('姓名');
            $table->string('sex')->comment('性别');
            $table->dateTime('birthday')->nullable()->comment('生日');
            $table->string('em_id')->nullable()->comment('员工工号');
            $table->string('email')->nullable()->comment('电子邮箱');
            $table->string('idcard')->comment('身份证号');
            $table->string('idcard_addr')->nullable()->comment('身份证地址');
            $table->string('mar_status')->nullable()->comment('婚姻状况');
            $table->string('mobile')->comment('手机号码');
            $table->string('nationality')->nullable()->comment('民族');
            $table->string('native_place')->nullable()->comment('籍贯');
            $table->date('start_work_time')->nullable()->comment('参加工作时间');
            $table->string('politice_status')->nullable()->comment('政治面貌');
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
        Schema::dropIfExists('hr_persons');
    }
}
