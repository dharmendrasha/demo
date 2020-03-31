{{--start--}}
@include('flash::message')
<table class="table table-hover table-inverse table-responsive">
    <thead class="thead-inverse">
        <tr>
            <th>id</th>
            <th>Awb</th>
            <th>action</th>
            <th>notice</th>
            <th>created at</th>
            <th>updated at</th>
            <th>quick Button</th>
        </tr>
        </thead>
        <tbody>
            @foreach ($theParcelStatus as $awb)
                <tr>
                <td>{{$awb->id}}</td>
                <td>{{$awb->awb}}</td>
                <td>{{$awb->action}}</td>
                <td>{{$awb->Notice}}</td>
                <td>{{$awb->created_at}}</td>
                <td>{{$awb->updated_at}}</td>
                <td>
                    <button type="button" name="" onclick="window.location.href = '{{route('admin.listAllUser.updateStatusPost',['id'=>$awb->id])}}'" id=""  class="btn btn-primary">update it</button>
                    <button type="button" name="" onclick="window.location.href = '{{route('admin.listAllUser.status.delete',['id'=>$awb->id])}}'" id=""  class="btn btn-danger">Remove it</button>
                </td>
                </tr>
            @endforeach
        </tbody>
</table>
{{$theParcelStatus->links()}}
{{--end--}}
