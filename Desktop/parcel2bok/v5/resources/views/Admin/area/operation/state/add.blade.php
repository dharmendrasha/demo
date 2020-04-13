{{--start--}}
@include('flash::message')
<div class="container">
<form action="{{route('admin.area.state.post')}}" method="POST">
    @csrf
        <div class="row">
            <div class="col">
                <div class="form-group">
                  <label for="country" class="sr-only">Select the sountry you wanted to add</label>
                  @error('country')
                  <span class="invalid-feedback text-danger" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                  <select class="form-control" name="country"  id="country ">
                      <option disabled selected>Select the country</option>
                      @foreach ($country as $c)
                        <option value="{{$c->country}}">{{$c->country}}</option>
                      @endforeach
                  </select>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                  <label for="states">States</label>
                  <input type="text"
                class="form-control @error('state') is-invalid @enderror" name="state" id="states" value="{{old('state')}}" aria-describedby="cuntryStates" placeholder="States">
                  <small id="cuntryStates" class="form-text text-muted">Plese add <code>,</code> after typing the state name</small>
                  @error('state')
                  <span class="invalid-feedback text-danger" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                </div>
            </div>
            <div class="col">
                <button type="submit" name="" id="" class="btn btn-warning btn-lg btn-block">Add this -></button>
            </div>
        </div>
    </form>
</div>
{{--end--}}
