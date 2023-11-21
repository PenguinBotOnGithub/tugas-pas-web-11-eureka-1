<?php

use App\Http\Controllers\KucingController;
use App\Http\Controllers\MakananController;
use App\Http\Controllers\MakananKucingController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get("/makanan", [MakananController::class, "index"]);

Route::get("/makanan/detail/{id}", [MakananController::class, "detail"]);

Route::get("/kucing", [KucingController::class, "index"]);

Route::get("/kucing/detail/{id}", [KucingController::class, "detail"]);

Route::get("/makanan-kucing", [MakananKucingController::class, "index"]);

Route::get("/makanan-kucing/detail/{id}", [MakananKucingController::class, "detail"]);
