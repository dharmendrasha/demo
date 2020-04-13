@extends('layouts.app')

@section('content')
{{--payment model --}}
<div class="row">
    <div class="col">
        -
    </div>
    <div class="col">
        <button type="button" class="center btn btn-primary text-center" data-toggle="modal" data-target="#paymentMethod">
            {{__('payment.payTheAmount')}}
          </button>

          <!-- Modal -->
          <div class="modal fade" id="paymentMethod" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel"> {{__('payment.payTheAmount')}}</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                    @include('payment.paypal')
                    {{-- @include('payment.2chekout') --}}
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">{{__('admin.close')}}</button>
                </div>
              </div>
            </div>
          </div>
    </div>
    <div class="col">
        -
    </div>
</div>
@endsection
