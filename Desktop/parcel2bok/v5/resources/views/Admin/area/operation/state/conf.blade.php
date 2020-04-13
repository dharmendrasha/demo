{{--start--}}
<div class="container">
    <div class="row">
        <div class="col">
            <h4 class="text-center">Country : <strong>{{$country}}</strong></h4>
        </div>
        <div class="col text-center">
            @foreach ($state as $s)
           <button class="btn btn-primary">
                   {{$s}} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="badge badge-success">New</span>
           </button>
            @endforeach
        </div>
        <div class="col">
        <form action="{{route('admin.area.state.post.dbl')}}" method="POST">
                @csrf
                <input type="text" hidden name="country" id="" value="{{$country}}">
                <input type="text" hidden name="state" id="" value="{{implode(',',$state)}}">

            <br/>
            <button type="submit" name="confirm" id="cinfirm" class="btn btn-success btn-lg btn-block">Confirm</button>
        <button type="button" name="confirm" id="cinfirm" onclick="window.location.href='{{route('admin.area.state.add')}}'" class="btn btn-danger btn-lg btn-block">Not Confirm <- Go back</button>
    </form>
    </div>
    </div>
</div>
{{--end--}}
