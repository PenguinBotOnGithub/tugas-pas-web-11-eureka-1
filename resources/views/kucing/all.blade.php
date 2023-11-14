@extends('layouts.main')

@section('content')
    <table class="table">
        <tr>
            <th>No.</th>
            <th>Nama</th>
            <th>Gambar</th>
            <th>Level</th>
            <th>Action</th>
        </tr>
        @foreach ($kucings as $index => $item)
            <tr>
                <td>{{ $index + 1 }}</td>
                <td>{{ $item->nama }}</td>
                <td><img src="{{ $item->gambar }}" alt="{{ $item->nama . '-alt' }}" class="img-thumbnail w-25"></td>
                <td>{{ $item->level }}</td>
                <td><a type="button" href="/kucing/detail/{{ $item->id }}" class="btn btn-primary">Detail</a></td>
            </tr>
        @endforeach
    </table>
@endsection
