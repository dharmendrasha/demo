<div class="container">
    <form class="" action="{{route('admin.area.pin.cnf')}}" method="POST">

    <div class="row text-center">
        <div class="col">
            <label for="from">{{__('welcome.from')}}</label>
                @csrf
                <div class="form-group">
                  <label for="country" class="sr-only">Select Countries</label>
                  @error('country')
                  <span class="invalid-feedback text-danger" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                  <select class="form-control dynamic" name="country" id="country" data-dependent="state">
                    <option selected disabled>Select country</option>
                    @foreach ($country as $c)
                    <option value="{{$c->country}}">{{$c->country}}</option>
                @endforeach
                  </select>
                </div>
                <div class="form-group">
                    <label for="state" class="sr-only">state</label>
                    @error('state')
                    <span class="invalid-feedback text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                    <select class="form-control dynamic" name="state" id="state" data-dependent="district">
                      <option value='State' selected disabled>State `|^ Please the country first ^|`</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="district" class="sr-only">District</label>
                    @error('district')
                    <span class="invalid-feedback text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                    <select class="form-control dynamic" name="district" id="district" data-dependent="pincode">
                      <option value='district' selected disabled>District `|^ Please the State first ^|`</option>
                    </select>
                </div>
                <div class="form-group">
                  <label for="pincode" class="sr-only">Add pincode</label>
                  <select class="form-control dynamic" name="pincode" id="pincode" data-dependent="pincode">
                    <option value='district' selected disabled>Pincode `|^ Please the District first ^|`</option>
                  </select>
                  @error('pincode')
                  <span class="invalid-feedback text-danger" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                </div>
        </div>
        <div class="col">
            <label for="to">{{__('welcome.to')}}</label>
                @csrf
                <div class="form-group">
                  <label for="country" class="sr-only">Select Countries</label>
                  @error('country')
                  <span class="invalid-feedback text-danger" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                  <select class="form-control newDy" name="country" id="toCountry" data-on="state">
                    <option selected disabled>Select country</option>
                    @foreach ($country as $c)
                    <option value="{{$c->country}}">{{$c->country}}</option>
                @endforeach
                  </select>
                </div>
                <div class="form-group">
                    <label for="state" class="sr-only">state</label>
                    @error('state')
                    <span class="invalid-feedback text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                    <select class="form-control newDy" name="state" id="toState" data-on="district">
                      <option value='State' selected disabled>State `|^ Please the country first ^|`</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="district" class="sr-only">District</label>
                    @error('district')
                    <span class="invalid-feedback text-danger" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                    <select class="form-control newDy" name="district" id="district" data-on="pincode">
                      <option value='district' selected disabled>District `|^ Please the State first ^|`</option>
                    </select>
                </div>
                <div class="form-group">
                  <label for="pincode" class="sr-only">Add pincode</label>
                  <select class="form-control newDy" name="pincode" id="pincode" data-on="pincode">
                    <option value='district' selected disabled>Pincode `|^ Please the District first ^|`</option>
                  </select>
                  @error('pincode')
                  <span class="invalid-feedback text-danger" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                </div>
        </div>
        </div>
    </div>
</form>
</div>
