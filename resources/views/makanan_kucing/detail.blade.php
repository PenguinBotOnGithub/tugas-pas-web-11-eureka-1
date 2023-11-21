@extends('layouts.main')

@section('content')
    <table class="table">
        <tr>
            <th>Nama</th>
            <th>Disukai Oleh</th>
            <th>Popularitas</th>
            <th>Harga</th>
            <th>Terakhir Dibeli</th>
        </tr>
        <tr>
            <td>{{ $makanan_kucing->nama }}</td>
            <td>{{ $makanan_kucing->disukai }}</td>
            <td>{{ $makanan_kucing->popularitas }}</td>
            <td>{{ $makanan_kucing->harga }}</td>
            <td>{{ date_format(date_create($makanan_kucing->terakhir_beli), 'd / F / Y') }}</td>
        </tr>
    </table>
@endsection
