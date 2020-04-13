{{--start--}}
<div class="container table-responsive">
    @include('flash::message')
    <table class="table table-hover table-inverse table-responsive container" style="background-color:white" id="multipleParcel">
        <thead class="thead-inverse text-center">
            <tr>
                <th>Id</th>
                <th>State</th>
                <th>Quick Action</th>
            </tr>
            </thead>
            <tbody>

                    @foreach ($state as $k => $s)
                    <tr>
                        <td>
                            {{$k}}
                        </td>
                        <td>
                            {{$s}}
                        </td>
                        <td>
                        <button type="button" class="btn btn-danger" onclick="window.location.href='{{route('admin.crud.state.del',['country'=>$country,'state' => $k])}}'">Remove</button>
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
                                    <form action="{{route('admin.crud.state.edit',['country' => $country, 'state'  => $s])}}" method="POST">
                                        @csrf
                                        <div class="modal-body">
                                           <div class="form-group">
                                             <label for="stateNew">State</label>
                                             <input type="text"
                                           class="form-control @error('stateNew') is-invalid @enderror" name="stateNew" id="stateNew" value="{{$s}}" aria-describedby="helpId" placeholder="Edit State">
                                             <small id="helpId" class="form-text text-muted sr-only">Edit the state</small>
                                             @error('stateNew')
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
                        <button type="button" class="btn btn-primary" onclick="window.location.href='{{route('admin.crud.district',['country' => $country, 'state' => $s])}}'">See Districts</button>
                        </td>
                    </tr>
                    @endforeach
                </ol>

            </tbody>
    </table>
</div>
{{--end--}}
