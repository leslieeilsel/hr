<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHrPersonsWorksTable extends Migration
{
    /**
     * Run the migrations.
     *  工作经历
     * @return void
     */
    public function up()
    {
        Schema::create('hr_persons_works', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('person_id')->comment('人员id');
            $table->string('commany_name')->comment('单位名称');
            $table->date('onboarding_time')->nullable()->comment('入职时间');
            $table->date('separa_time')->nullable()->comment('离职时间');
            $table->float('service_period',8,2)->nullable()->comment('工作年限');
            $table->string('position')->nullable()->comment('职务');
            $table->string('separa_reason')->nullable()->comment('离职原因');
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
        Schema::dropIfExists('hr_persons_works');
    }
}
