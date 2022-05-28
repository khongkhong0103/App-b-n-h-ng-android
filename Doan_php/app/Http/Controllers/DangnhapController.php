<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\user;
use Log;
use Illuminate\Support\Facades\Auth; 
use Validator;

class DangnhapController extends Controller
{
    public function dangnhap(Request $request) {
    	csrf_field();
    	$username = $request->post("username");
    	$password = $request->post("password");
    	$message = 'Login fail !!';
        $message1 = 'Đăng Nhập Thành Công !!';

    	$result = user::where('username',$username)->where('password',$password)->first();

    	if ($result) {
    		return $result;
    	}else {
            return json_encode($message);
        }

    }
}
