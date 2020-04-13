{{--start--}}
<div class="continer table-responsive">
    {{----}}

    @include('flash::message')
    {{--get the list of all the zones by pincode--}}
    <table class="table table-hover table-inverse table-responsive" style="background-color:white" id="multipleParcel">
        <thead class="thead-inverse">
            <tr>
                <th>Carrier name</th>
                <th>District</th>
                <th>Pincode</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
               @foreach ($paginate as $data)
                    <tr>
                    <td>{{$data->carrierName}}</td>
                    <td>{{$data->district}}</td>
                    <td>{{$data->pin}}</td>
                    <td>
                    {{-- <button type="button" name="" onclick="window.location.href='{{route('admin.carrier.rate.insert',['carrierId' => $data->carrierId,'carrierName'=>$data->carrierName,'district' => $data->district,'pin' => $data->pin])}}'" id="" class="btn btn-success btn-lg btn-block">Select</button> --}}
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#rateInclude">
                        Include Rate
                      </button>
                      <!-- Modal -->
                        <div class="modal fade" id="rateInclude" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                </div>
                                <form action="{{route('admin.carrier.rate.insert',['carrierId' => $data->carrierId,'carrierName'=>$data->carrierName,'district' => $data->district,'pin' => $data->pin])}}" method="POST">
                                    @csrf

                                    <div class="modal-body">

                                    <input type="text" name="area" value="{{$data->district}}" required hidden id="">

                                            <div class="form-group">
                                              <label for="rate" class="sr-only">Include Rate</label>
                                              <input type="number"
                                                class="form-control @error('rate') is-invalid @enderror" name="rate" id="rate" aria-describedby="rateInclude New" placeholder="Include rate">
                                              <small id="rateInclude New" class="form-text text-muted sr-only">Include Rate new Parcel</small>
                                              @error('rate')
                                            <small id="rateInclude New" class="form-text text-muted text-danger">{{$message}}</small>
                                              @enderror
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Save changes</button>
                                        </div>
                                </form>


                            </div>
                            </div>
                        </div>
                </td>
                    </tr>
               @endforeach
            </tbody>
    </table>
    {{$paginate->links()}}
</div>
{{--end--}}
