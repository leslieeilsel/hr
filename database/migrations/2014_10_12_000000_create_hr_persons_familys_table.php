<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHrPersonsFamilysTable extends Migration
{
    /**
     * Run the migrations.
     *  家庭成员
     * @return void
     */
    public function up()
    {
        Schema::create('hr_persons_familys', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('person_id')->comment('人员id');
            $table->string('name')->comment('姓名');
            $table->integer('self_relation')->nullable()->comment('与本人关系');
            $table->string('tel_phone')->nullable()->comment('联系电话');
            $table->string('work_duty')->nullable()->comment('工作单位及职务');
            $table->integer('is_urgent')->nullable()->comment('是否紧急联系人');
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
        Schema::dropIfExists('hr_persons_familys');
    }
}
