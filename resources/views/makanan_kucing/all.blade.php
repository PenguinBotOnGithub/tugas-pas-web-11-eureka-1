@extends('layouts.main')

@section('content')
    <table class="table">
        <tr>
            <th>No.</th>
            <th>Nama</th>
            <th>Harga</th>
            <th>Popularitas</th>
            <th>Actions</th>
        </tr>

        @foreach ($makanan_kucings as $index => $item)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $item->nama }}</td>
                <td>{{ 'Rp ' . $item->harga }}</td>
                <td>{{ $item->popularitas }}</td>
                <td><a type="button" href="/makanan-kucing/detail/{{ $item->id }}" class="btn btn-primary">Detail</a></td>

            </tr>
        @endforeach
    </table>
@endsection
