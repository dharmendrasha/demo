{{--start--}}
@extends('layouts.app')
@section('content')
@guest
    @include('guest.welcome')
    @else
    @include('logged.welcome')
@endguest
@endsection
{{--end--}}
