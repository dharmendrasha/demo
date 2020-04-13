{{--start--}}
<div class="container table-responsive">
    <table class="table table-hover table-inverse table-responsive" style="background-color:white" id="multipleParcel">
        <thead class="thead-inverse">
            <tr>
                <th>Logo</th>
                <th>Carrier Name</th>
                <th>Links</th>
                <th>District</th>
                <th>Rate For area</th>
                <th>Weight and rate</th>
            </tr>
            </thead>
            <tbody>
                @foreach ($list as $l)
                <tr>
                    <td>
                    <img src="{{route('index')}}/images/carrier/{{$l->carrierLogo}}"style="height: 50px;max-width: 1000px;" class="img-thumbnail ${3|rounded-top,rounded-right,rounded-bottom,rounded-left,rounded-circle,|}" alt="carrier logo">
                    </td>
                    <td>
                        {{$l->carrierName}}
                    </td>
                    <td>
                        <a href="{{$l->carrierUrl}}" target="_blank" class="text-decoration-none">Go to the website <i class="fa fa-arrow-circle-up" aria-hidden="true"></i> </a>
                        <br/>
                        <a href="{{$l->tarckingCarrierUrl}}" target="_blank" class="text-decoration-none">Track the courier <i class="fa fa-arrow-circle-up" aria-hidden="true"></i></a>
                    </td>
                    <td>
                        {{$l->carrierArea}}
                    </td>
                    <td>
                        {{$l->priceByArea}}
                    </td>
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
                </tr>
                @endforeach
            </tbody>
    </table>
    {{$list->links()}}
</div>
{{--end--}}
