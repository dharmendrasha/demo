{{--start--}}

<div class="container table-responsive">
    @include('flash::message')
    <table class="table table-hover table-inverse table-responsive" style="background-color:white" id="multipleParcel">
        <thead class="thead-inverse">
            <tr>
                <th>Id</th>
                <th>Logo</th>
                <th>Name</th>
                <th>Website</th>
                <th>Track</th>
                <th>weight range</th>
                <th>Quick Action</th>
            </tr>
            </thead>
            <tbody>
                @foreach ($carrierList as $l)
                    <tr>
                    <td>{{$l->id}}</td>
                    <td><img src="{{route('index')}}/images/carrier/{{$l->carrierLogo}}" style="height: 50px;width: 100px;" class="img-thumbnail ${3|rounded-top,rounded-right,rounded-bottom,rounded-left,rounded-circle,|}" alt="image of {{$l->carrierName}}"></td>
                    <td><p class="badge badge-success">{{$l->carrierName}}</p></td>
                    <td><a href="{{$l->carrierUrl}}" class="badge badge-primary">Go to the website</a></td>
                    <td><a href=" {{$l->tarckingCarrierUrl}}" class="badge badge-primary">Track a parcel</a></td>
                    <td>
                        <table class="table table-hover table-inverse table-responsive">
                            <thead class="thead-inverse">
                                <tr>
                                    <th>Type</th>
                                    <th>Starting</th>
                                    <th>Ending</th>
                                    <th>Rate</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="bg-warning">
                                <td>Minimum</td>
                                <td>{{$l->MinStartingRange}}</td>
                                <td>{{$l->MinEndingRange}}</td>
                                <td>{{$l->MinPrice}}</td>
                                </tr>
                                <tr class="bg-danger">
                                    <td>Medium</td>
                                    <td>{{$l->MidStartingRange}}</td>
                                    <td>{{$l->MidEndingRange}}</td>
                                    <td>{{$l->MidPrice}}</td>
                                </tr>
                                <tr class="bg-success">
                                    <td>Maximum</td>
                                    <td>{{$l->MaxStartingRange}}</td>
                                    <td>{{$l->MaxEndingRange}}</td>
                                    <td>{{$l->MaxPrice}}</td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    {{-- <td><span class="badge badge-pill badge-danger">{{$l->startingRange}}</span>&nbsp;&nbsp;To&nbsp;&nbsp;<span class="badge badge-pill badge-success">{{$l->EndingRange}}</span></td> --}}
                        <td>
                        <button type="button" name="" id="" class="btn btn-success" onclick="window.location.href='{{route('admin.carrier.rate.weight',['carrierId' => $l->id,'carrierName' => $l->carrierName])}}'" btn-lg btn-block">Add rates</button>
                        </td>
                </tr>
                @endforeach
            </tbody>
    </table>

    {{$carrierList->links()}}
</div>

{{--end--}}
