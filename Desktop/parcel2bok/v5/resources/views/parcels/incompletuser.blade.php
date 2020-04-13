{{--start--}}
@extends('layouts.app')
@section('content')
{{-- here we will realize the user ;
Status : {{$us}} --}}
<div class="container">
    <div class="section"><br/><br/><br/><br/><br/><br/></div>
<div class="row">
    <div class="col text-center">
        <div class="">
            <h4>Please complete the initial step to complete the parcel booking click below to complet the parcel</h4>
            <h4>{{$us}}</h4>
        <button type="button" name="" id="" onclick="window.location.href='{{$routeNew}}'" class="btn btn-success btn-lg btn-block">Click here</button>
        </div>
    </div>
</div>
<div class="section"><br/><br/><br/><br/><br/><br/></div>
</div>
@endsection
{{--end--}}
