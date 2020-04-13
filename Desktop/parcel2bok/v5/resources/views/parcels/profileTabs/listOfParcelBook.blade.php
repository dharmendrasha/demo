{{--start--}}
<div class="container">
        <table class="table table-bordered table-inverse table-responsive" id="myTable">
            <thead class="thead-inverse">

                <tr>
                    <th>awb</th>
                    <th>Booked on</th>
                    <th>track</th>
                    <th>action</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                    <td scope="row">{{$allTheuserInfo[0]->awb}}</td>
                        <td>{{$allTheuserInfo[0]->created_at}}</td>
                    <td>
                    <form action="{{route('awbTrack')}}" method="POST">
                            @csrf
                            <input type="text" hidden value="{{$allTheuserInfo[0]->awb}}" name="awbNumber">
                            <button type="submit" name="" id="" class="btn btn-primary">Track the parcel</button>
                        </form>
                    </td>
                    <td>
                    <button type="button" name="" id="" class="btn btn-success" onclick="window.location.href='{{route('parcelDetail',['awb' => $allTheuserInfo[0]->awb])}}'" >Detail</button>
                        {{--deatail model--}}
                        <div class="modal fade" id="detail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <div class="modal-body">
                                    Detail
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                  <button type="button" class="btn btn-primary">Save changes</button>
                                </div>
                              </div>
                            </div>
                          </div>
                        {{--detail model end--}}
                          {{-- @if ($checkTheSteps[0]->isMultipleParcel === 'C') --}}
                          {{$a = 9}}
                        {{var_dump($checkTheSteps)}}
                          @if ($a === 9)
                          <button type="button" name="" id="" onclick="window.location.href='{{route('enableparcel',['awb'=>$allTheuserInfo[0]->awb])}}'" class="btn btn-success">Enable parcel</button>
                          @else
                          <button type="button" name="" id="" onclick="window.location.href='{{route('cancelparcelUser',['awb'=>$allTheuserInfo[0]->awb])}}'" class="btn btn-warning">Cancel parcel</button>
                          @endif
                        <button type="button" name="" id="" class="btn btn-secondary" onclick="alert('pdf will be downloading. Please take a look');window.location.href='{{route('pdfGenerate',['awb'=>Auth::user()->uniqNum])}}'">print receipt</button>
                        @if ($returnParcel === 'Y')
                        <button type="button" name="" id="" class="btn btn-success btn-outline-light" onclick="alert('update parcel has to be done at ~returnParelController~')">update parcel</button>
                        @else
                        <button type="button" name="" id="" class="btn btn-success btn-outline-light" data-toggle="modal" data-target="#returnaddress">Add a return address</button>
                        {{--return address--}}
                        <div class="modal fade" id="returnaddress" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <h5 class="modal-title" id="exampleModalLabel">Return address</h5>
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                  </button>
                                </div>
                                <div class="modal-body">
                                <button type="button" name="" id="" onclick="window.location.href='{{route('newParcelAddress',['awb'=>$allTheuserInfo[0]->awb])}}'" class="btn btn-warning btn-lg btn-block">New return address</button>
                                    <button type="button" name="" id="" onclick="window.location.href='{{route('oldParcelAddress',['awb'=>$allTheuserInfo[0]->awb])}}'"class="btn btn-success btn-lg btn-block" id="oldreturnAddress">Old return address</button>
                                    <small for='oldreturnAddress'>This will submit the 'FROM' address as a return address</small>
                                </div>
                                <div class="modal-footer">
                                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                                </div>
                              </div>
                            </div>
                          </div>
                        {{--return address model end--}}
                        @endif
                    </td>
                    </tr>
                </tbody>
        </table>
</div>
{{--end--}}
