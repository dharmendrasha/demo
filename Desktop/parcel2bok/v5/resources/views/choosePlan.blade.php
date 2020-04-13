{{--start--}}
@extends('layouts.app')
@section('content')
<div class="row container">
        @foreach ($offerNew as $o)
           <div class="col">
           <div class="card-group">
            <div class="card">
              {{-- <svg class="bd-placeholder-img card-img-top" width="100%" height="180" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="true" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg> --}}
            <img src="{{route('index')}}/images/carrier/{{$o->carrierLogo}}" style="width:500px;height:200px" class="img-thumbnail ${3|rounded-top,rounded-right,rounded-bottom,rounded-left,rounded-circle,|}" alt="carrier logo">
              <div class="card-body">
              <h5 class="card-title">{{$o->carrierName}}</h5>
                <hr/>
                    <div class="row">
                      <div class="col">
                      <h3 class="card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => $o->carrierId
                          ])}}" class="btn btn-block btn-outline-info">select</a>
                      </div>
                  </div>
                </div>
            </div>
          </div>
        </div>
           @endforeach
          <hr/>
</div>
<center>
    {{$offerNew->links()}}
</center>
@endsection
{{--end--}}
