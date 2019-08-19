<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('password/reset', 'Auth\ResetPasswordController@reset');
Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail');

Route::post('login', 'AuthController@login');
Route::post('logout', 'AuthController@logout');
Route::post('refresh', 'AuthController@refresh');
Route::post('user', 'AuthController@user');


Route::group(['middleware' => ['api']], function () {
    Route::post('user/regist', 'User\RegistController@registUser');
    Route::any('user/users', 'User\RegistController@getUsers');
    Route::post('user/resetPassword', 'User\RegistController@resetPassword');
    Route::post('user/getUserDictData', 'User\RegistController@getUserDictData');
    Route::post('user/deleteUserData', 'User\RegistController@deleteUserData');
    Route::post('user/editRegistUser', 'User\RegistController@editRegistUser');
    Route::post('user/getUser', 'User\RegistController@getUser');

    Route::get('department/getByParentId/{id}', 'System\DepartmentController@getByParentId');
    Route::get('department/getAllDepartment', 'System\DepartmentController@getAllDepartment');
    Route::get('department/getClassDepartment', 'System\DepartmentController@getClassDepartment');
    Route::post('department/addDepartment', 'System\DepartmentController@add');
    Route::post('department/editDepartment', 'System\DepartmentController@edit');

    Route::get('dict/dicts', 'System\DictController@dicts');
    Route::post('dict/addDict', 'System\DictController@addDict');
    Route::post('dict/editDict', 'System\DictController@editDict');
    Route::post('dict/deleteDict', 'System\DictController@deleteDict');

    Route::post('dict/dictDataList', 'System\DictController@dictDataList');
    Route::post('dict/addDictData', 'System\DictController@addDictData');
    Route::post('dict/editDictData', 'System\DictController@editDictData');
    Route::post('dict/deleteDictData', 'System\DictController@deleteDictData');

    Route::get('menu/getmenus', 'System\MenuController@getMenus');
    Route::get('menu/getrouter', 'System\MenuController@getRouter');
    Route::get('menu/menuselecter', 'System\MenuController@getMenuSelecter');
    Route::post('menu/menutree', 'System\MenuController@getMenuTree');
    Route::post('menu/add', 'System\MenuController@add');
    Route::post('menu/addMenu', 'System\MenuController@addMenu');
    Route::post('menu/editMenu', 'System\MenuController@editMenu');
    Route::post('menu/deleteMenu', 'System\MenuController@deleteMenu');

    Route::post('role/deleteRoleData', 'System\RoleController@deleteRoleData');
    Route::get('role/roles', 'System\RoleController@getRoles');
    Route::post('role/add', 'System\RoleController@add');
    Route::post('role/edit', 'System\RoleController@edit');
    Route::post('role/setDefaultRole', 'System\RoleController@setDefaultRole');
    Route::post('role/setrolemenus', 'System\RoleController@setRoleMenus');
    Route::post('role/getDepartmentTree', 'System\RoleController@getDepartmentTree');
    Route::post('role/editRoleDep', 'System\RoleController@editRoleDep');

    Route::post('log/getOperationLogs', 'Logs\LogController@getOperationLogs');
});

