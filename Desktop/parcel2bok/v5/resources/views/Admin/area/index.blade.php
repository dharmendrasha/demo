{{--start--}}
<div class="container">
    <div class="row">
        <div class="col text-center">
            <h3><b>Management of all the Information related to Area</b></h3>
        </div>
        <div class="w-100"></div>
        <div class="col">
        <button type="button" name="locations" id="locations" onclick="window.location.href = '{{route('admin.area.manage')}}'" class="btn btn-primary btn-lg btn-block">See the loacations</button>
            <button type="button" name="locations" id="locations" onclick="window.location.href = '{{route('admin.area.functions')}}'" class="btn btn-success btn-lg btn-block">Add new loacations</button>
        </div>
        <div class="w-100"></div>
        <div class="col text-center">
            <h3><b>Management of all Parcel companies</b></h3>
        </div>
        <div class="w-100"></div>
        <div class="col">
            <button type="button" name="locations" id="locations" class="btn btn-success btn-lg btn-block" onclick="window.location.href='{{route('admin.parcel.show')}}'" b>see the parcel Company</button>
        <button type="button" name="locations" id="locations" onclick="window.location.href='{{route('admin.parcel.new')}}'" class="btn btn-success btn-lg btn-block">Add parcel Company</button>
        </div>
    </div>
</div>
{{--end--}}
