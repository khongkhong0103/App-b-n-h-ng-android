<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\donhang;
use App\chitietdonhang;
use Session;

use Log;

class DonhangController extends Controller
{
    public function guidonhang(Request $request) 
    {
        $dataJson = json_encode($request->post("list"));
        $dataJson = json_decode($dataJson);
        $data = array();
        $data['iduser'] = $request->post("iduser");
        $data['tenkh'] = $request->post("tenkh");
        $data['sdt'] = $request->post("sdt");
        $data['diachi'] = $request->post("diachi");
        $today = date("Y/m/d");
        $data['thoigian'] = $today;
        $data['tongtien'] = $request->post("tongtien");
        $donhang = donhang::insertGetId($data);

        foreach ($dataJson as $value) {
            $themctdh = chitietdonhang::insert(
            [
                'iddh' => $donhang,
                'idsp' => $value->idsp,
                'tensp' => $value->tensp,
                'hinhsp' => $value->hinhsp,
                'soluong' => $value->soluongsp,
                'giatien' => $value->giatien
            ]);
        }

        return '1';

	}
}
