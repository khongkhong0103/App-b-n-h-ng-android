<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\user;
use Log;

class DangkyController extends Controller
{
    public function dangky(Request $request) {

    	$data = array();
    	$data['username'] = $request->post("username");
    	$data['password'] = $request->post("password");
    	$data['fullname'] = $request->post("fullname");
    	$data['phonenumber'] = $request->post("phonenumber");
    	$data['CMND'] = $request->post("CMND");
        $data['address'] = $request->post("address");


    	$dangky = user::insert($data);
    	return $dangky;
    }
}
