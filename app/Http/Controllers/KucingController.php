<?php

namespace App\Http\Controllers;

use App\Models\Kucing;
use Illuminate\Http\Request;

class KucingController extends Controller
{
    public function index()
    {
        return view("kucing.all", [
            "title" => "Daftar Kucing",
            "kucings" => Kucing::all()
        ]);
    }

    public function detail(int $id)
    {
        return view("kucing.detail", [
            "title" => "Detail Kucing",
            "kucing" => Kucing::find($id),
        ]);
    }
}
