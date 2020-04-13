{{--start--}}
<div class="container">
    <form action="{{route('admin.parcel.update.post',['id'=>$det->id])}}" method="post" enctype="multipart/form-data">
    @include('msg\errMsg')
    @include('flash::message')
        @csrf
            <div class="row">
                <div class="col text-center">
                    <h3><b>Here we Update new parcel companies</b></h3>
                </div>
                <hr style="color:black" />
                <div class="w-100"></div>
                <div class="col">
                    <div class="form-group">
                        <label for="carrierName" class="sr-only">Carrier name</label>
                        <input type="text" class="form-control @error('carrierName') is-invalid @enderror"
                    name="carrierName" id="carrierName" aria-describedby="carname" value="{{$det->carrierName}}" placeholder="carrier name">
                        <small id="carname" class="form-text text-muted sr-only">carrier name</small>
                        @error('carrierName')
                        <span class="invalid-feedback text-danger" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                </div>
                <div class="w-100"></div>
                <div class="col">
                    <div class="form-group">
                        <label for="carrierName" class="sr-only">Carrier Url</label>
                        <input type="url" class="form-control @error('carrierUrl') is-invalid @enderror"
                    name="carrierUrl" id="carrierName" value="{{$det->carrierUrl}}" aria-describedby="carname" placeholder="Carrier Url">
                        <small id="carname" class="form-text text-muted sr-only">Carrier Url</small>
                        @error('carrierUrl')
                        <span class="invalid-feedback text-danger" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label for="tarckingCarrierName" class="sr-only">Carrier Url</label>
                        <input type="url" class="form-control @error('tarckingCarrierUrl') is-invalid @enderror"
                            name="tarckingCarrierUrl" id="tarckingCarrierName" value='{{$det->tarckingCarrierUrl}}' aria-describedby="carname" placeholder="carrier tracking URL">
                        <small id="carname" class="form-text text-muted sr-only">Carrier Url</small>
                        @error('tarckingCarrierUrl')
                        <span class="invalid-feedback text-danger" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                      <label for="carrierLogo" class="sr-only">Carrier logo</label>
                      <img src="{{route('index')}}/images/carrier/{{$det->carrierLogo}}" style="height: 50px;width: 100px;" class="img-thumbnail ${3|rounded-top,rounded-right,rounded-bottom,rounded-left,rounded-circle,|}" alt="previous uploded carrier image">
                      <input type="file"
                    class="form-control @error('carrierLogo')is-invalid @enderror" name="carrierLogo" id="carrierLogo" aria-describedby="carrierLogo" placeholder="Carrier logo">
                      <small id="carrierLogo" class="form-text text-muted sr-only">CarrierLogo</small>
                      @error('carrierLogo')
                      <span class="invalid-feedback text-danger" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                      @enderror
                    </div>



                </div>
                <div class="col">
                    <table class="table table-hover table-inverse table-responsive">
                        <thead class="thead-inverse">
                            <tr>
                                <th>Range Type</th>
                                <th>Start range in kg </th>
                                <th>End Range in Kg</th>
                                <th>Rate</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr class="bg-warning">
                                    <td>
                                        Minimum
                                    </td>
                                    <td>
                                        <div class="form-group">
                                          <label for="startingRange" class="sr-only">startingRange</label>
                                          <input type="number"
                                        class="form-control @error('MinStartingRange') is-invalid @enderror" name="MinStartingRange" id="startingRange" value="{{$det->MinStartingRange}}" aria-describedby="stratingRange" placeholder="Starting Range">
                                          <small id="stratingRange" class="form-text text-muted sr-only" class="sr-only">Startig Range</small>
                                          @error('MinStartingRange')
                                          <span class="invalid-feedback text-danger" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                          @enderror
                                        </div>

                                    </td>

                                    <td>
                                        <div class="form-group">
                                            <label for="startingRange" class="sr-only">Ending Range</label>
                                            <input type="number"
                                        class="form-control @error('MinEndingRange') is-invalid @enderror" name="MinEndingRange" value="{{$det->MinStartingRange}}"  id="startingRange" aria-describedby="stratingRange" placeholder="Ending Range">
                                            <small id="stratingRange" class="form-text text-muted sr-only" class="sr-only">Ending Range</small>
                                            @error('MinEndingRange')
                                            <span class="invalid-feedback text-danger" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                          </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                          <label for="price" class="sr-only">Rate</label>
                                          <input type="number"
                                        class="form-control" name="MinPrice" value="{{$det->MinPrice}}" id="price" aria-describedby="priceRate" placeholder="Rate price">
                                          <small id="priceRate" class="form-text text-muted sr-only">Rate</small>
                                          @error('MinPrice')
                                          <span class="invalid-feedback text-danger" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                          @enderror
                                        </div>
                                    </td>
                                </tr>
                                <tr class="bg-danger">
                                    <td>
                                        Midium
                                    </td>
                                    <td>
                                        <div class="form-group">
                                          <label for="startingRange" class="sr-only">startingRange</label>
                                          <input type="number"
                                        class="form-control @error('startingRange') is-invalid @enderror" name="MidStartingRange" id="startingRange" value="{{$det->MidStartingRange}}" aria-describedby="stratingRange" placeholder="Starting Range">
                                          <small id="stratingRange" class="form-text text-muted sr-only" class="sr-only">Startig Range</small>
                                          @error('MidStartingRange')
                                          <span class="invalid-feedback text-danger" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                          @enderror
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <label for="startingRange" class="sr-only">Ending Range</label>
                                            <input type="number"
                                        class="form-control @error('EndingRange') is-invalid @enderror" name="MidEndingRange" value="{{$det->MidEndingRange}}"  id="startingRange" aria-describedby="stratingRange" placeholder="Ending Range">
                                            <small id="stratingRange" class="form-text text-muted sr-only" class="sr-only">Ending Range</small>
                                            @error('MidEndingRange')
                                            <span class="invalid-feedback text-danger" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                          </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                          <label for="price" class="sr-only">Rate</label>
                                          <input type="number"
                                        class="form-control" name="MidPrice" id="price" aria-describedby="priceRate" value="{{$det->MidPrice}}" placeholder="Rate price">
                                          <small id="priceRate" class="form-text text-muted sr-only">Rate</small>
                                          @error('MidPrice')
                                          <span class="invalid-feedback text-danger" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                          @enderror
                                        </div>
                                    </td>
                                </tr>
                                <tr class="bg-success">
                                    <td>
                                        Maximum
                                    </td>
                                    <td>
                                        <div class="form-group">
                                          <label for="startingRange" class="sr-only">startingRange</label>
                                          <input type="number"
                                        class="form-control @error('startingRange') is-invalid @enderror" name="MaxStartingRange" id="startingRange" value="{{$det->MaxStartingRange}}" aria-describedby="stratingRange" placeholder="Starting Range">
                                          <small id="stratingRange" class="form-text text-muted sr-only" class="sr-only">Startig Range</small>
                                          @error('startingRange')
                                          <span class="invalid-feedback text-danger" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                          @enderror
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <label for="startingRange" class="sr-only">Ending Range</label>
                                            <input type="number"
                                        class="form-control @error('EndingRange') is-invalid @enderror" name="MaxEndingRange" value="{{$det->MaxEndingRange}}"  id="startingRange" aria-describedby="stratingRange" placeholder="Ending Range">
                                            <small id="stratingRange" class="form-text text-muted sr-only" class="">Ending Range</small>
                                            @error('EndingRange')
                                            <span class="invalid-feedback text-danger" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                            @enderror
                                          </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                          <label for="price" class="sr-only">Rate</label>
                                          <input type="number"
                                        class="form-control" name="MaxPrice" id="price" aria-describedby="priceRate" value="{{$det->MaxPrice}}" placeholder="Rate price">
                                          <small id="priceRate" class="form-text text-muted sr-only">Rate</small>
                                          @error('MaxPrice')
                                          <span class="invalid-feedback text-danger" role="alert">
                                              <strong>{{ $message }}</strong>
                                          </span>
                                          @enderror
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                    </table>
                </div>
            </div>
            <button type="submit" name="" id="" class="btn btn-danger btn-lg btn-block">Update -></button>
        </form>
    </div>
    {{--end--}}
