{{--start--}}
@extends('layouts.app')
@section('content')
Congratulations the payment is completed . We will send our local executives to your local doorstep to take the parcel and send it to you.
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#fsdsdf">
    Add return parcel
  </button>
  <!-- Modal -->
  <div class="modal fade" id="fsdsdf" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add return parcel address</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
        <button type="button" name="" id="" onclick="window.location.href='{{route('oldParcelAddress')}}'" class="btn btn-warning btn-lg btn-block">I want to use the from parcel as the return option</button>
            <button type="button" name="" id="" onclick="window.location.href='{{route('newParcelAddress')}}'" class="btn btn-danger btn-lg btn-block">Add a new return address</button>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  @endsection
{{--end--}}
