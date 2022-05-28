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