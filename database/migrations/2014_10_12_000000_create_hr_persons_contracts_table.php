<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHrPersonsContractsTable extends Migration
{
    /**
     * Run the migrations.
     *  合同管理
     * @return void
     */
    public function up()
    {
        Schema::create('hr_persons_contracts', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('person_id')->comment('人员id');
            $table->string('a_init_id')->nullable()->comment('甲方');
            $table->integer('a_person')->nullable()->comment('甲方代表人');
            $table->string('a_addr')->nullable()->comment('甲方地址');
            $table->integer('b_name')->nullable()->comment('姓名');
            $table->string('b_idcard')->nullable()->comment('身份证号');
            $table->integer('b_addr')->nullable()->comment('乙方住址');
            $table->string('begin_date')->nullable()->comment('生效日期');
            $table->integer('expir')->nullable()->comment('合同有效期');
            $table->string('contract_id')->nullable()->comment('合同编号');
            $table->integer('contract_name')->nullable()->comment('合同名称');
            $table->string('contract_category')->nullable()->comment('合同类型');
            $table->integer('ContractStatus')->nullable()->comment('合同状态');
            $table->string('ContractFile')->nullable()->comment('合同文件');
            $table->integer('ChangeReason')->nullable()->comment('变更原因');
            $table->string('ContinueReason')->nullable()->comment('续签原因');
            $table->integer('EndReason')->nullable()->comment('终止/解除原因');
            $table->string('IsCurrentStatus')->nullable()->comment('是否当前有效');
            $table->integer('SignatureDate')->nullable()->comment('合同签定日期');
            $table->integer('TerminateDate')->nullable()->comment('合同终止日期');
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
        Schema::dropIfExists('hr_persons_contracts');
    }
}
