{{--start--}}
<div class="container table-responsive">
    @include('flash::message')
    <table class="table table-hover table-inverse table-responsive" style="background-color:white" id="multipleParcel">
        <thead class="thead-inverse">
            <tr>
                <th>Logo</th>
                <th>Carrier Name</th>
                <th>Carrier Url</th>
                <th>Tracking Url</th>
                <th>Range</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
                @foreach ($tl as $d)
                <tr>
                    <td>
                    <img src="{{route('index')}}/images/carrier/{{$d->carrierLogo}}" style="height:50px;width:100px" class="img-thumbnail ${3|rounded-top,rounded-right,rounded-bottom,rounded-left,rounded-circle,|}" alt="logo">
                    </td>
                <td>{{$d->carrierName}}</td>
                <td><a target="_blank" href="{{$d->carrierUrl}}" class="badge primary badge-success bg-primary">Carrier Url</a></td>
                <td><a target="_blank" href="{{$d->carrierUrl}}" class="badge badge-success bg-success">Tracking Url</a></td>
                <td><span class="badge badge-success">{{$d->startingRange}}</span> To <span class="badge badge-warning">{{$d->EndingRange}}</span></td>
                <td>
                <button type="button" name="" id="" onclick="window.location.href = '{{route('admin.carrier.join',['country' => $country,'state' => $state, 'district' => $district, 'pin' => $pin, 'carrier' => $d->id, 'carrierName' => $d->carrierName ])}}'" class="btn btn-success btn-lg btn-block">
                        Add
                    </button>
                </td>
                </tr>
                @endforeach
            </tbody>
    </table>
    {{$tl->links()}}
</div>
{{--end--}}
