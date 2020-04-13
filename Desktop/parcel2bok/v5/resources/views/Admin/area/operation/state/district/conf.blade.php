{{--start--}}
<div class="container">
    @include('flash::message')
    <div class="row">
        <div class="col">
        <h4 class="text-center">Country : <strong>{{$country}}</strong> | State : <strong>{{$state}}</strong></h4>
        </div>
        <div class="col text-center">
            @foreach ($dis as $s)
           <button class="btn btn-primary">
                   {{$s}} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="badge badge-success">New</span>
           </button>
            @endforeach
        </div>
        <div class="col">
        <form action="{{route('admin.district.post.conf')}}" method="POST">
                @csrf
                <input type="text" hidden name="country" id="" value="{{$country}}">
                <input type="text" hidden name="state" value="{{$state}}"/>
                <input type="text" hidden name="district" id="" value="{{implode(',',$dis)}}">

            <br/>
            <button type="submit" name="confirm" id="cinfirm" class="btn btn-success btn-lg btn-block">Confirm</button>
        <button type="button" name="confirm" id="cinfirm" onclick="window.location.href='{{route('admin.area.district.add')}}'" class="btn btn-danger btn-lg btn-block">Not Confirm <- Go back</button>
    </form>
    </div>
    </div>
</div>
{{--end--}}
