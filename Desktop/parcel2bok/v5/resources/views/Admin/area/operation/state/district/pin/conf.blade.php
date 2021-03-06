{{--start--}}
<div class="container">
    @include('flash::message')
    <div class="row">
        <div class="col">
        <h4 class="text-center">Country : <strong>{{$country}}</strong> | State : <strong>{{$state}}</strong> | District : <strong>{{$district}}</strong></h4>
        </div>
        <div class="col text-center">
            @foreach ($pin as $s)
           <button class="btn btn-primary">
                   {{$s}} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="badge badge-success">New</span>
           </button>
            @endforeach
        </div>
        <div class="col">
        <form action="{{route('admin.area.pin.save')}}" method="POST">
                @csrf
                <input type="text" hidden name="country" id="" value="{{$country}}">
                <input type="text" hidden name="state" value="{{$state}}"/>
                <input type="text" hidden name="district" value="{{$district}}"/>
                <input type="text" hidden name="pincode" id="" value="{{implode(',',$pin)}}">
            <br/>
            <button type="submit" name="confirm" id="cinfirm" class="btn btn-success btn-lg btn-block">Confirm</button>
        <button type="button" name="confirm" id="cinfirm" onclick="window.location.href='{{route('admin.area.pin.add')}}'" class="btn btn-danger btn-lg btn-block">Not Confirm <- Go back</button>
    </form>
    </div>
    </div>
</div>
{{--end--}}
