<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\loaisanpham;

class LoaisanphamController extends Controller
{
    public function loaisanpham() {
    	$loaisanpham = loaisanpham::all();
    	return $loaisanpham ;
    }
}
