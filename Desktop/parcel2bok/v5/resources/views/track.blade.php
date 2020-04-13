{{--start--}}
@extends('layouts\app')
@section('content')
<div class="container px-1 px-md-4 py-5 mx-auto">
<p class="text-center text-secondary">{{$payment}}</p>
    <div class="card">
        <div class="row d-flex justify-content-between px-3 top">
            <div class="d-flex">
            <h5>ORDER <span class="text-primary font-weight-bold">{{$status->awbNumber}}</span></h5>
            </div>
            <div class="d-flex text-center">
                <h5>Parcel<span class=" @if ($cancelled==='true')
                    text-danger
                @else
                    text-primary
                @endif font-weight-bold"><br/>{{$sta}}</span></h5>
            </div>
            <div class="d-flex flex-column text-sm-right">
            <p class="mb-0">Parcel created On <span>{{$status->updated_at}}</span></p>
                <p class="disabled" hidden>USPS <span class="font-weight-bold">234094567242423422898</span></p>
            </div>
        </div> <!-- Add class 'active' to progress -->
        <div @if ($cancelled==='true')
        hidden
    @else
        show
    @endif>
        <div class="row d-flex justify-content-center">
            <div class="col-12">
                <ul id="progressbar" class="text-center">
                    <li class="active step0">Completely Booked the [USERNAME]</li>
                    <li class="active step0">Confirmed by the [ADMIN]</li>
                    <li class="active step0">Parcel is successfully collected by the [USERNAME]</li>
                    <li class="step0">Parcel is being dispatched</li>
                </ul>
            </div>
        </div>
        <div class="row justify-content-between top">
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/9nnc9Et.png">
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br>Processed</p>
                </div>
            </div>
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/u1AzR7w.png">
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br>Shipped</p>
                </div>
            </div>
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/TkPm63y.png">
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br>En Route</p>
                </div>
            </div>
            <div class="row d-flex icon-content"> <img class="icon" src="https://i.imgur.com/HdsziHP.png">
                <div class="d-flex flex-column">
                    <p class="font-weight-bold">Order<br>Arrived</p>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="row">
        <div class="col">
        <h4>{{$actionTaken}}</h4>
        <ul>
            <li>
                Action : {{$action}}
            </li>
            <li>
                Notice : {{$notice}}
            </li>
            <li>
                On : {{$on}}
            </li>
        </ul>
        </div>
    </div>
</div>
@endsection
{{--end--}}
