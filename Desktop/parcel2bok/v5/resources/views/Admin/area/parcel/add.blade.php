{{--start--}}
<div class="container">
<form action="{{route('admin.parcel.newPost')}}" method="post" enctype="multipart/form-data">
@include('msg\errMsg')
@include('flash::message')
    @csrf
        <div class="row">
            <div class="col text-center">
                <h3><b>Here we add new parcel companies</b></h3>

            </div>
            <hr style="color:black" />
            <div class="w-100"></div>
            <div class="col">
                <div class="form-group">
                    <label for="carrierName" class="sr-only">Carrier name</label>
                    <input type="text" class="form-control @error('carrierName') is-invalid @enderror"
                name="carrierName" id="carrierName" aria-describedby="carname" value="{{old('carrierName')}}" placeholder="carrier name">
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
                name="carrierUrl" id="carrierName" value="{{old('carrierUrl')}}" aria-describedby="carname" placeholder="Carrier Url">
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
                        name="tarckingCarrierUrl" id="tarckingCarrierName" {{old('tarckingCarrierUrl')}} aria-describedby="carname" placeholder="carrier tracking URL">
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
                  <input type="file"
                class="form-control @error('carrierLogo')is-invalid @enderror" name="carrierLogo" value="{{old('carrierLogo')}}" id="carrierLogo" aria-describedby="carrierLogo" placeholder="Carrier logo">
                  <small id="carrierLogo" class="form-text text-muted sr-only">CarrierLogo</small>
                  @error('carrierLogo')
                  <span class="invalid-feedback text-danger" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                </div>



            </div>
            <div class="col table-responsive">
                <table class="table table-hover table-inverse table-responsive" style="background-color:white" id="multipleParcel">
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
                                    class="form-control @error('MinStartingRange') is-invalid @enderror" name="MinStartingRange" id="startingRange" value="{{old('startingRange')}}" aria-describedby="stratingRange" placeholder="Starting Range">
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
                                    class="form-control @error('MinEndingRange') is-invalid @enderror" name="MinEndingRange" value="{{old('EndingRange')}}"  id="startingRange" aria-describedby="stratingRange" placeholder="Ending Range">
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
                                        class="form-control" name="MinPrice" id="price" aria-describedby="priceRate" placeholder="Rate price">
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
                                    class="form-control @error('startingRange') is-invalid @enderror" name="MidStartingRange" id="startingRange" value="{{old('startingRange')}}" aria-describedby="stratingRange" placeholder="Starting Range">
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
                                    class="form-control @error('EndingRange') is-invalid @enderror" name="MidEndingRange" value="{{old('EndingRange')}}"  id="startingRange" aria-describedby="stratingRange" placeholder="Ending Range">
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
                                        class="form-control" name="MidPrice" id="price" aria-describedby="priceRate" placeholder="Rate price">
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
                                    class="form-control @error('startingRange') is-invalid @enderror" name="MaxStartingRange" id="startingRange" value="{{old('startingRange')}}" aria-describedby="stratingRange" placeholder="Starting Range">
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
                                    class="form-control @error('EndingRange') is-invalid @enderror" name="MaxEndingRange" value="{{old('EndingRange')}}"  id="startingRange" aria-describedby="stratingRange" placeholder="Ending Range">
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
                                        class="form-control" name="MaxPrice" id="price" aria-describedby="priceRate" placeholder="Rate price">
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
        <button type="submit" name="" id="" class="btn btn-danger btn-lg btn-block">Add -></button>
    </form>
</div>
{{--end--}}
