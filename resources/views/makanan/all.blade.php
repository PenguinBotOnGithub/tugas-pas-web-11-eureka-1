@extends('layouts.main')

@section('content')
    <table class="table">
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Gambar</th>
            <th>Asal Daerah</th>
            <th>Action</th>
        </tr>
        @foreach ($makanans as $index => $item)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $item->nama }}</td>
                <td><img src="{{ $item->gambar }}" alt="{{ $item->nama . '-alt' }}" class="img-thumbnail w-25"></td>
                <td>{{ $item->asal_daerah }}</td>
                <td><a type="button" href="/makanan/detail/{{ $item->id }}" class="btn btn-primary">Detail</a></td>
            </tr>
        @endforeach
    </table>
@endsection
