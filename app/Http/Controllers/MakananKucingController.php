<?php

namespace App\Http\Controllers;

use App\Models\MakananKucing;
use Illuminate\Http\Request;

class MakananKucingController extends Controller
{
    public function index()
    {
        return view("makanan_kucing.all", [
            "title" => "Daftar Makanan Kucing",
            "makanan_kucings" => MakananKucing::all()
        ]);
    }

    public function detail(int $id)
    {
        return view("makanan_kucing.detail", [
            "title" => "Detail Makanan Kucing",
            "makanan_kucing" => MakananKucing::find($id)
        ]);
    }
}
