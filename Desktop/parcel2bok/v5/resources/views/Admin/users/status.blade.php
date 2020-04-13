{{--start--}}
@include('flash::message')
<div class="table-responsive text-break">
    <table class="table table-hover table-inverse table-responsive text-break" style="background-color:white" id="multipleParcel">
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
            <tbody class="text-break">
                @foreach ($theParcelStatus as $awb)
                    <tr>
                    <td class="text-break">{{$awb->id}}</td>
                    <td class="text-break">{{$awb->awb}}</td>
                    <td class="text-break">{{$awb->action}}</td>
                    <td class="text-break">{{$awb->Notice}}</td>
                    <td class="text-break">{{$awb->created_at}}</td>
                    <td class="text-break">{{$awb->updated_at}}</td>
                    <td>
                        <button type="button" name="" onclick="window.location.href = '{{route('admin.listAllUser.updateStatusPost',['id'=>$awb->id])}}'" id=""  class="btn btn-primary">update it</button>
                        <button type="button" name="" onclick="window.location.href = '{{route('admin.listAllUser.status.delete',['id'=>$awb->id])}}'" id=""  class="btn btn-danger">Remove it</button>
                    </td>
                    </tr>
                @endforeach
            </tbody>
    </table>
    {{$theParcelStatus->links()}}
</div>
{{--end--}}
