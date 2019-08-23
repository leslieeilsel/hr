<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHrPersonsEEsTable extends Migration
{
    /**
     * Run the migrations.
     *  教育经历
     * @return void
     */
    public function up()
    {
        Schema::create('hr_persons_ees', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('person_id')->comment('人员id');
            $table->string('degree')->comment('学位');
            $table->string('degree_state')->nullable()->comment('学位授予国家');
            $table->dateTime('degree_time')->nullable()->comment('学位授予时间');
            $table->string('degree_unit')->nullable()->comment('学位授予单位');
            $table->string('diploma')->nullable()->comment('学历');
            $table->string('grada_school')->nullable()->comment('研究生院');
            $table->dateTime('Enrol_time')->nullable()->comment('入学时间');
            $table->dateTime('gradu_time')->nullable()->comment('毕业时间');
            $table->float('schooling_length', 8, 2)->nullable()->comment('学制（年）');
            $table->string('spec')->nullable()->comment('专业');
            $table->integer('spec_category')->nullable()->comment('专业类别');
            $table->integer('study_modality')->nullable()->comment('学习形式');
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
        Schema::dropIfExists('hr_persons_ees');
    }
}
