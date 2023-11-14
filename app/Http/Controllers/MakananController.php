<?php

namespace App\Http\Controllers;

use App\Models\Makanan;
use Illuminate\Http\Request;

class MakananController extends Controller
{
    public function index()
    {
        return view("makanan.all", [
            "title" => "Daftar Makanan",
            "makanans" => Makanan::all(),
        ]);
    }

    public function detail(int $id)
    {
        return view(
            "makanan.detail",
            [
                "title" => "Detail makanan",
                "makanan" => Makanan::find($id)
            ]
        );
    }
}
