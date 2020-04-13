{{--statr --}}
<div class="container table-responsive">
    @include('flash::message')
    <table class="table table-bordered table-inverse table-responsive" style="background-color:white" id="multipleParcel">
        <thead class="thead-inverse">
            <tr>
                <th>id</th>
                <th>Name</th>
                <th>Quick action</th>
            </tr>
            </thead>
            <tbody>
                @foreach ($lx as $k => $s)
                <tr>
                <td scope="row">{{$k}}</td>
                <td>{{$s}}</td>
                    <td>

                        <button type="button" class="btn btn-danger" onclick="window.location.href='{{route('admin.crud.district.del',['country'=>$country,'state' => $state,'district' => $k])}}'">Remove</button>
                        {{-- <button type="button" class="btn btn-primary" onclick="window.location.href='{{route('admin.crud.state.edit',['country' => $country, 'state'  => $s])}}'">Edit</button> --}}
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal{{$k}}">
                            Edit
                          </button>
                          <!-- Modal -->
                        <div class="modal fade" id="exampleModal{{$k}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Edit the state</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                    </div>
                                <form action="{{route('name.crud.district.edit',['country' => $country,'state' => $state,'district' => $s])}}" method="POST">
                                        @csrf
                                        <div class="modal-body">
                                           <div class="form-group">
                                             <label for="stateNew">District</label>
                                             <input type="text"
                                           class="form-control @error('districtNew') is-invalid @enderror" name="districtNew" id="stateNew" value="{{$s}}" aria-describedby="helpId" placeholder="Edit State">
                                             <small id="helpId" class="form-text text-muted sr-only">Edit the state</small>
                                             @error('districtNew')
                                           <small id="helpId" class="form-text text-muted bg-danger">{{$message}}</small>
                                             @enderror"
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
                        <button type="button" class="btn btn-primary" onclick="window.location.href='{{route('admin.crud.pin',['country' => $country,'state' => $state,'district' => $s])}}'">See Pincode</button>

                    </td>
                </tr>

                @endforeach

            </tbody>
    </table>
</div>
{{--end--}}
