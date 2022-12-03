<?php

use App\Http\Controllers\backend\CompanyController;
use App\Http\Controllers\backend\EmployController;
use App\Http\Controllers\frontendController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
     return view('welcome');
});

Auth::routes();
Route::controller(CompanyController::class)->group(function(){
    Route::get('/company/list', 'index')->name('show.company');
    Route::get('/create/company', 'create')->name('create.company');
    Route::post('/store/company/data', 'store')->name('store.company');
    Route::get('/eidit/data/{id}', 'edit')->name('edit.company');
    Route::post('/update/data/{id}', 'update')->name('update.company');
    Route::delete('/delete/data/{id}', 'destroy')->name('delete.company');
})->middleware('auth');;

Route::controller(EmployController::class)->group(function(){
    Route::get('/employ/list', 'index')->name('show.employ');
    Route::get('/create/employ', 'create')->name('create.employ');
    Route::post('/store/employ/data', 'store')->name('store.employ');
    Route::get('/eidit/employ/{id}', 'edit')->name('edit.employ');
    Route::post('/update/employ/{id}', 'update')->name('update.employ');
    Route::delete('/delete/employ/{id}', 'destroy')->name('delete.employ');
})->middleware('auth');;

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
