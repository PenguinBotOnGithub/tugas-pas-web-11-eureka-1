@extends('layouts.main')

@section('content')
    <table class="table">
        <tr>
            <th>Nama</th>
            <th>Gambar</th>
            <th>Asal Daerah</th>
            <th>Tanggal Lahir</th>
            <th>Level</th>
            <th>Skill</th>

        </tr>
        <tr>
            <td>{{ $kucing->nama }}</td>
            <td><img src="{{ $kucing->gambar }}" alt="{{ $kucing->nama . '-alt' }}" class="img-thumbnail w-50"></td>
            <td>{{ $kucing->asal_daerah }}</td>
            <td>{{ date_format(date_create($kucing->tanggal_lahir), 'd / F / Y') }}</td>
            <td>{{ $kucing->level }}</td>
            <td>{{ $kucing->skill }}</td>
        </tr>
    </table>
@endsection
