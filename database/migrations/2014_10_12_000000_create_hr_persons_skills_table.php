<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHrPersonsSkillsTable extends Migration
{
    /**
     * Run the migrations.
     *  职业技能
     * @return void
     */
    public function up()
    {
        Schema::create('hr_persons_skills', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('person_id')->comment('人员id');
            $table->string('certificate')->nullable()->comment('技能证书');
            $table->integer('skill_level')->nullable()->comment('技能等级');
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
        Schema::dropIfExists('hr_persons_skills');
    }
}
