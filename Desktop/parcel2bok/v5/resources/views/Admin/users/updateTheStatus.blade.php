{{--start--}}
<div class="container">
<form action="{{route('admin.listAllUser.updateStatusPostMethod',['id' => $det->id])}}" method="POST" enctype="multipart/form-data">
    @csrf
        <div class="row">
            <div class="col text-center">
                <h3>Update The parcel.</h3>
            </div>
            <div class="w-100"></div>
            <div class="col">
                <div class="form-group">
                  <label for="awb" class="sr-only">The awb</label>
                  <input type="text"
                class="form-control @error('awb') is-invalid @enderror" name="awb" value="{{$det->awb}}" id="awb" aria-describedby="theAwb" placeholder="The awb">
                  <small id="theAwb" class="form-text text-muted sr-only">The awb</small>
                  @error('awb')
                                    <span class="invalid-feedback text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                </div>
            </div>
            <div class="w-100"></div>
            <div class="col">
                <div class="form-group">
                  <label for="parcelStatus" class="sr-only">Quick Action</label>
                  @error('parcelStatus')
                                    <span class="invalid-feedback text-danger" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                  <select class="form-control @error('parcelStatus') is-invalid @enderror" name="parcelStatus" id="parcelStatus">
                  <option selected>{{$det->action}}</option>
                    <option>Completed</option>
                    <option>In progress</option>
                    <option>Custom</option>
                  </select>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                  <label for="customNotice">Write the custom notice</label>
                <textarea class="form-control @error('customNotice') is-invalid @enderror" placeholder="Write custom notice to the customer" name="customNotice" id="customNotice" rows="5">{{$det->Notice}}</textarea>
                  @error('customNotice')
                  <span class="invalid-feedback text-danger" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
              @enderror
                </div>
            </div>
            <div class="col">
                <button type="submit" name="" id="" class="btn btn-primary btn-lg btn-block">Update Status</button>
                <button type="button" name="" id="" onclick="window.location.href = '{{ url()->previous() }}'" class="btn btn-danger btn-lg btn-block"><- Go back</button>
            </div>
        </div>
    </form>
</div>
{{--end--}}
