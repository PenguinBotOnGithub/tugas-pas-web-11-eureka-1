@extends('layouts.main')

@section('content')
    <table class="table">
        <tr>
            <th>Nama</th>
            <th>Gambar</th>
            <th>Asal Daerah</th>
            <th>Deskripsi</th>
            <th>Rating</th>
        </tr>
        <tr>
            <td>{{ $makanan->nama }}</td>
            <td><img src="{{ $makanan->gambar }}" alt="{{ $makanan->nama . '-alt' }}" class="img-thumbnail w-50"></td>
            <td>{{ $makanan->asal_daerah }}</td>
            <td>{{ $makanan->deskripsi }}</td>
            <td>{{ $makanan->rating }}</td>
        </tr>
    </table>
@endsection
