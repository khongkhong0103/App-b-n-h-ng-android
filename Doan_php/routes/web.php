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

Route::get('/', function () {
    return view('welcome');
});

//register

Route::post('dangky', [
	'as'=>'dangky',
	'uses'=>'DangkyController@dangky'
]);

Route::get('dangky', [
	'as'=>'dangky',
	'uses'=>'DangkyController@dangky'
]);

//login

Route::post('dangnhap', [
	'as'=>'dangnhap',
	'uses'=>'DangnhapController@dangnhap'
]);

Route::get('dangnhap', [
	'as'=>'dangnhap',
	'uses'=>'DangnhapController@dangnhap'
]);

//loaisanpham

Route::get('loaisanpham', [
	'as'=>'loaisanpham',
	'uses'=>'LoaisanphamController@loaisanpham'
]);

//Sanpham

Route::get('sanpham', [
	'as'=>'sanpham',
	'uses'=>'SanphamController@allsanpham'
]);

Route::get('sanpham/{idlsp}', [
	'as'=>'sanpham',
	'uses'=>'SanphamController@sanpham'
]);

//donhang

Route::post('donhang', [
	'as'=>'donhang',
	'uses'=>'DonhangController@guidonhang'
]);

Route::get('donhang', [
	'as'=>'donhang',
	'uses'=>'DonhangController@guidonhang'
]);
