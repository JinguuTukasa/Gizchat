<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TestController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/test', function () {
    return view('test');
});

// ホームページ
Route::get('/home', [TestController::class, 'index'])->name('home');

// プロフィールページ
Route::get('/profile', [TestController::class, 'profile'])->name('profile');

// ダッシュボード
Route::get('/dashboard', [TestController::class, 'dashboard'])->name('dashboard');
