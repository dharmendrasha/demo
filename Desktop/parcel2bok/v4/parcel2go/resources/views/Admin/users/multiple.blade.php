{{--start--}}
{{--start--}}
@include('flash::message')
<table class="table table-hover table-bordered table-inverse table-responsive">
    <thead class="thead-inverse">
        <tr>
            <th>Id</th>
            <th>userId</th>
            <th>Awb Number</th>
            <th>Steps Complete</th>
            <th>Payment status</th>
            <th>Created at</th>
            <th>Updated at</th>
            <td>QuickAction</td>
        </tr>
        </thead>
        <tbody class="table-responsive">
          @foreach ($list as $li)
              <tr class="text-center">
              <td><h5><b>{{$li->id}}</b></h5></td>
              <td><h5><b>{{$li->userId}}</b></h5></td>
              <td><h5><b>{{$li->awbNumber}}</b></h5></td>
              <td><h5><b>{{$li->stepsComplete}}</b></h5><small> ``out of {{$li->totalSteps}}``</small></td>
              <td><h5>@if ($li->stepsComplete === $li->totalSteps)
                <button class="btn btn-success">
                        <span class="badge badge-primary">Complete</span>
                </button>
                @else

                <button class="btn btn-danger">
                    <span class="badge badge-danger">In-Complete</span>
            </button>
              @endif</h5></td>
              <td><h5><b>{{$li->created_at}}</b></h5></td>
              <td><h5><b>{{$li->updated_at}}</b></h5></td>
              <td>
                  <div class="row">
                      <div class="col">
                      <button type="button" name="" id="" onclick="window.location.href = '{{route('admin.listAllUser.delete',['awb' => $li->awbNumber])}}'" class="btn btn-danger">Cancel</button>

                          <button type="button" name="" id="" onclick="window.location.href = '{{route('admin.listAllUser.detail',['awb' => $li->awbNumber])}}'" class="btn btn-primary">Detail</button>

                          <button type="button" name="" id="" onclick="window.location.href = '{{route('admin.listAllUser.deliver',['awb' => $li->awbNumber])}}'" class="btn btn-success">Deliver</button>
                      </div>
                  </div>
              </td>
            </tr>
          @endforeach
        </tbody>
</table>
{{$list->links()}}
{{--end--}}
{{--end--}}
