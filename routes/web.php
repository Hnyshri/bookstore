<?php

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

Route::get('/', [App\Http\Controllers\PublicController::class, 'index'])->name('dashboard');
Route::get('/book/{id}/details', [App\Http\Controllers\PublicController::class, 'bookDetails'])->name('book-details');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/reveiw/model', [App\Http\Controllers\HomeController::class, 'reveiwModel'])->name('reveiw-model');
Route::post('/reveiw', [App\Http\Controllers\HomeController::class, 'reveiwModelSubmit'])->name('reveiw-model-submit');
