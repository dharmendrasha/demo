{{--start--}}
@extends('layouts.app')
@section('content')
<form action="{{route('userInfoSave',['awb'=> $awb])}}" method="post">
    @csrf
    <div class="container">

        <div class="row">
            <div class="col">
                <p class="text-center"><b>{{__('userInfo.parcelPickUpAdd')}}</b></p>
                <hr />
            </div>
            <div class="w-100"></div>
            <div class="col">
                <div class="form-group">
                    <label for="addressOne" class="sr-only">{{__('userInfo.AddressOne')}}</label>
                    <input type="text" class="form-control @error('pickUpaddressOne') is-invalid @enderror"
                        name="pickUpaddressOne" id="addressOne" aria-describedby="pickAddressOne"
                        placeholder="{{__('userInfo.AddressOne')}}">
                    <small id="pickAddressOne"
                        class="form-text text-muted sr-only">{{__('userInfo.AddressOne')}}</small>
                    @error('pickUpaddressOne')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="pickUpAddresstwo" class="sr-only">{{__('userInfo.Addresstwo')}}</label>
                    <input type="text" class="form-control @error('pickUpAddresstwo') is-invalid @enderror"
                        name="pickUpAddresstwo" id="pickUpAddresstwo" aria-describedby="helpId"
                        placeholder="{{__('userInfo.Addresstwo')}}">
                    <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.Addresstwo')}}</small>
                    @error('pickUpAddresstwo')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
            </div>
            <div class="w-100"></div>
            <div class="col">
                <div class="form-group">
                    <label for="pickUpCity" class="sr-only">{{__('userInfo.CityVillage')}}</label>
                    <input type="text" class="form-control @error('pickUpCity') is-invalid @enderror" name="pickUpCity"
                        id="pickUpCity" aria-describedby="helpId" placeholder="{{__('userInfo.CityVillage')}}">
                    <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.CityVillage')}}</small>
                    @error('pickUpCity')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="pickupDistict" class="sr-only">{{__('userInfo.district')}}</label>
                    <input type="text" class="form-control @error('pickupDistict') is-invalid @enderror"
                        name="pickupDistict" id="pickupDistict" aria-describedby="helpId"
                        placeholder="{{__('userInfo.district')}}">
                    <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.district')}}</small>
                    @error('pickupDistict')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
            </div>
            <div class="w-100"></div>
            <div class="col">
                <div class="form-group">
                    <label for="pickUpState" class="sr-only">{{__('userInfo.state')}}</label>
                    <input type="text" class="form-control @error('pickUpState') is-invalid @enderror"
                        name="pickUpState" id="pickUpState" aria-describedby="helpId"
                        placeholder="{{__('userInfo.state')}}">
                    <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.state')}}</small>
                    @error('pickUpState')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="pickUpCountry" class="sr-only">{{__('userInfo.country')}}</label>
                    <input type="text" class="form-control @error('pickUpCountry') is-invalid @enderror"
                        name="pickUpCountry" id="pickUpCountry" aria-describedby="helpId"
                        placeholder="{{__('userInfo.country')}}">
                    <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.country')}}</small>
                    @error('pickUpCountry')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
            </div>
            <div class="form-group">
                <label for="pickUpPin" class="sr-only">{{__('userInfo.pin')}}</label>
                <input type="text" class="form-control @error('pickUpPin') is-invalid @enderror" name="pickUpPin"
                    id="pickUpPin" aria-describedby="helpId" placeholder="{{__('userInfo.pin')}}">
                <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.pin')}}</small>
                @error('pickUpPin')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>
        </div>
    </div>
    </div>
    <hr/>
    <div class="row">
        <div class="col">
            <p class="text-center"><b>{{__('userInfo.parcelDorpAddress')}}</b></p>
            <hr />
        </div>
        <div class="w-100"></div>
        <div class="col">
            <div class="form-group">
                <label for="addressOne" class="sr-only">{{__('userInfo.AddressOne')}}</label>
                <input type="text" class="form-control @error('dropaddressOne') is-invalid @enderror"
                    name="dropaddressOne" id="addressOne" aria-describedby="pickAddressOne"
                    placeholder="{{__('userInfo.AddressOne')}}">
                <small id="pickAddressOne" class="form-text text-muted sr-only">{{__('userInfo.AddressOne')}}</small>
                @error('dropaddressOne')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>
        </div>
        <div class="col">
            <div class="form-group">
                <label for="dropAddresstwo" class="sr-only">{{__('userInfo.Addresstwo')}}</label>
                <input type="text" class="form-control @error('dropAddresstwo') is-invalid @enderror"
                    name="dropAddresstwo" id="dropAddresstwo" aria-describedby="helpId"
                    placeholder="{{__('userInfo.Addresstwo')}}">
                <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.Addresstwo')}}</small>
                @error('dropAddresstwo')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>
        </div>
        <div class="w-100"></div>
        <div class="col">
            <div class="form-group">
                <label for="dropCity" class="sr-only">{{__('userInfo.CityVillage')}}</label>
                <input type="text" class="form-control @error('dropCity') is-invalid @enderror" name="dropCity"
                    id="dropCity" aria-describedby="helpId" placeholder="{{__('userInfo.CityVillage')}}">
                <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.CityVillage')}}</small>
                @error('dropCity')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>
        </div>
        <div class="col">
            <div class="form-group">
                <label for="dropDistict" class="sr-only">{{__('userInfo.district')}}</label>
                <input type="text" class="form-control @error('dropDistict') is-invalid @enderror"
                    name="dropDistict" id="dropDistict" aria-describedby="helpId"
                    placeholder="{{__('userInfo.district')}}">
                <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.district')}}</small>
                @error('dropDistict')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>
        </div>
        <div class="w-100"></div>
        <div class="col">
            <div class="form-group">
                <label for="dropState" class="sr-only">{{__('userInfo.state')}}</label>
                <input type="text" class="form-control @error('dropState') is-invalid @enderror" name="dropState"
                    id="dropState" aria-describedby="helpId" placeholder="{{__('userInfo.state')}}">
                <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.state')}}</small>
                @error('dropState')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>
        </div>
        <div class="col">
            <div class="form-group">
                <label for="dropCountry" class="sr-only">{{__('userInfo.country')}}</label>
                <input type="text" class="form-control @error('dropCountry') is-invalid @enderror"
                    name="dropCountry" id="dropCountry" aria-describedby="helpId"
                    placeholder="{{__('userInfo.country')}}">
                <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.country')}}</small>
                @error('dropCountry')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>
        </div>
        <div class="form-group">
            <label for="dropPin" class="sr-only">{{__('userInfo.pin')}}</label>
            <input type="text" class="form-control @error('dropPin') is-invalid @enderror" name="dropPin"
                id="dropPin" aria-describedby="helpId" placeholder="{{__('userInfo.pin')}}">
            <small id="helpId" class="form-text text-muted sr-only">{{__('userInfo.pin')}}</small>
            @error('dropPin')
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
            @enderror
        </div>
    </div>
    </div>
    <button type="submit" name="submit" id="submit" class="btn btn-info btn-lg btn-block">Submit this info</button>
</form>
@endsection
{{--end--}}
