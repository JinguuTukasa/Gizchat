<?php

namespace App\Http\Controllers;

class TestController extends Controller
{
    public function index()
    {
        // ホームページ用のビューを返す
        return view('home');
    }

    public function profile()
    {
        // プロフィールページ用のビューを返す
        return view('profile');
    }

    public function dashboard()
    {
        // ダッシュボードページ用のビューを返す
        return view('dashboard');
    }
}
