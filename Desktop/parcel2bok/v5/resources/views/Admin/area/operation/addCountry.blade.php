{{--start--}}

    <div class="container">
        @include('flash::message')
    <form action="{{route('admin.area.country.insert')}}" method="POST"  enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col">
                    <div class="form-group">
                      <label for="countryName" class="sr-only">Country Name</label>
                      <input type="text"
                    class="form-control @error('country') is-invalid @enderror" name="country" id="countryName" value="{{old('countryName')}}" aria-describedby="CountryName" placeholder="Country Name">
                      <small id="CountryName" class="form-text text-muted sr-only">Country Name</small>
                      @error('country')
                      <span class="invalid-feedback text-danger" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                      @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="countryFlag" class="sr-only">Country Flag</label>
                      <input type="file"
                        class="form-control @error('flag') is-invalid @enderror" name="flag" id="countryFlag" aria-describedby="countryFlag" placeholder="Country Flag">
                      <small id="countryFlag" class="form-text text-muted sr-only">Country flag</small>
                      @error('flag')
                      <span class="invalid-feedback text-danger" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                      @enderror
                    </div>
                </div>
                <button type="submit" name="add" id="add" class="btn btn-success btn-lg btn-block">Add -></button>
            </div>
        </form>
    </div>

{{--end--}}
