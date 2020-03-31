<!-- Tabs -->
<div class="container">
    <form class="" method="POST" action="{{route('parcelBookPost')}}" enctype="multipart/form-data">
        @csrf
        <div class="row text-center">
            <div class="col">
                <div class="form-group">
                    <label for="from">{{__('welcome.from')}}</label>
                    <select class="form-control @error('from') is-invalid @enderror" name="from"
                        id="from">
                        <option selected disabled>{{__('welcome.selectState')}}</option>
                        <option>Bikaner</option>
                        <option>Ajmer</option>
                        <option>Jaipur</option>
                    </select>
                    @error('from')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="fromPincode" class="sr-only">{{__('welcome.pincode')}}</label>
                    <input type="number"
                        class="form-control  @error('fromPincode') is-invalid @enderror"
                        name="fromPincode" id="fromPincode" aria-describedby="pincodeFrom"
                        placeholder="{{__('welcome.pincode')}}">
                    <small id="pincodeFrom"
                        class="form-text text-muted sr-only">{{__('welcome.pincode')}}</small>
                    @error('fromPincode')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    <label for="to">{{__('welcome.to')}}</label>
                    <select class="form-control @error('to') is-invalid @enderror" name="to"
                        id="to">
                        <option selected disabled>{{__('welcome.selectState')}}</option>
                        <option>delhi</option>
                        <option>haryana</option>
                        <option>punjab</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="toPincode" class="sr-only">{{__('welcome.toExplain')}}</label>
                    <input type="text" class="form-control @error('toPincode') is-invalid @enderror"
                        name="toPincode" id="toPincode" aria-describedby="toSend"
                        placeholder="{{__('welcome.toExplain')}}">
                    <small id="toSend"
                        class="form-text text-muted sr-only">{{__('welcome.toExplain')}}</small>
                    @error('toPincode')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                    {{__('welcome.weight')}} Kg
                    <label for="weight" class="sr-only">{{__('welcome.weight')}} Kg</label>
                    <input type="number" class="form-control @error('weight') is-invalid @enderror"
                        name="weight" id="weight" aria-describedby="weight"
                        placeholder="{{__('welcome.weight')}} Kg">
                    <small id="weight" class="form-text text-muted sr-only">{{__('welcome.weight')}}
                        Kg</small>
                    @error('weight')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <button type="submit" name="parcelBook" id="parcelBook"
                    class="btn btn-primary btn-lg btn-block col">{{__('welcome.submit')}}</button>
            </div>
        </div>
    </form>
    @include('parcels.multiple')
</div>
<!-- ./Tabs -->
