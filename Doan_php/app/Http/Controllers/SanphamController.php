<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\sanpham;


class SanphamController extends Controller
{
    public function sanpham ($idlsp) {
    	$sanpham = sanpham::where("idlsp",$idlsp)->get();
    	return $sanpham;
    }

    public function allsanpham () {
    	$allsanpham = sanpham::all();
    	return $allsanpham;
    }
}
