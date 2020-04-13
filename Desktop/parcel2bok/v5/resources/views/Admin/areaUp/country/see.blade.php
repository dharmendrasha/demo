{{--start--}}
<div class="container table-responsive">
    @include('flash::message')
    <table class="table table-hover table-inverse table-responsive text-center" style="background-color:white" id="multipleParcel">
        <thead class="thead-inverse">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Flags</th>
                <th>Quick Action</th>
            </tr>
            </thead>
            <tbody class="">
                @foreach ($list as $l)
                    <tr>
                    <td><b>{{$l->id}}</b></td>
                    <td>{{$l->country}}</td>
                    <td>
                    <img src="{{route('index')}}/images/flag/{{$l->flag}}" style="height:50px;width:100px" class="img-thumbnail ${3|rounded-top,rounded-right,rounded-bottom,rounded-left,rounded-circle,|}" alt="">
                    </td>
                    <td>
                    <button type="button" class="btn btn-danger" onclick="window.location.href='{{route('admin.crud.country.del',['id' => $l->id])}}'">Remove</button>
                    <button type="button" class="btn btn-primary" onclick="window.location.href='{{route('admin.crud.country.edit',['id' => $l->id])}}'">Edit</button>
                    <button type="button" class="btn btn-primary" onclick="window.location.href='{{route('admin.crud.state',['country' => $l->country])}}'">See state</button>
                    </td>
                    </tr>
                @endforeach
            </tbody>
    </table>
    {{$list->links()}}
</div>
{{--end--}}
