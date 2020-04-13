{{--strat--}}
@extends('layouts.app')
@section('content')
{{-- this is where we create the new user with password with <code>printf($newAllInformation)</code> --}}
<div class="container">
<form action="{{route('register')}}" method="POST" enctype="multipart/form-data">
        @csrf
        <p class="text-center"><b>Registration</b></p>
        <div class="col">
        <input type="text" name="uniqNum" hidden value="{{$newAllInformation[0]->awb}}" id="">
        <input type="text" name="mobile" hidden value="{{$newAllInformation[0]->contactPhoneNumber}}" id="">
        <input type="text" name="email" hidden value="{{$newAllInformation[0]->contactEmail}}" id="">
        </div>
        <div class="row">
            <div class="col">
                <div class="form-group">
                <label for="userName" class="sr-only">{{__('extraRegistration.FullName')}}</label>
                  <input type="text"
                class="form-control" name="name" id="userName" aria-describedby="userName" placeholder="{{__('extraRegistration.FullName')}}">
                  <small id="userName" class="form-text text-muted sr-only">{{__('extraRegistration.FullName')}}</small>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                <label for="userName" class="sr-only">{{__('extraRegistration.UserName')}}</label>
                  <input type="text"
                    class="form-control" name="username" id="userName" aria-describedby="usrnme" placeholder="{{__('extraRegistration.UserName')}}">
                  <small id="usrnme" class="form-text text-muted sr-only">{{__('extraRegistration.UserName')}}</small>
                </div>
            </div>
            <div class="w-100"></div>
            <div class="col">
                <div class="form-group">
                <label for="password" class="sr-only">{{__('extraRegistration.password')}}</label>
                  <input type="password"
                    class="form-control" name="password" id="password" aria-describedby="pass" placeholder="{{__('extraRegistration.password')}}">
                  <small id="pass" class="form-text text-muted sr-only">{{__('extraRegistration.password')}}</small>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                <label for="password_confirmed" class="sr-only">{{__('extraRegistration.confPass')}}</label>
                  <input type="password"
                    class="form-control" name="password_confirmation" id="password_confirmed" aria-describedby="confPass" placeholder="{{__('extraRegistration.confPass')}}">
                  <small id="confPass" class="form-text text-muted sr-only">{{__('extraRegistration.confPass')}}</small>
                </div>
            </div>


        </div>
    <button type="submit" name="submit" id="submit" class="btn btn-primary btn-lg btn-block">{{__('welcome.submit')}}</button>
    </form>
</div>
@endsection
{{--end--}}
