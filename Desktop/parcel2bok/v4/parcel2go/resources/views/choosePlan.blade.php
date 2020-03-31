{{--start--}}
@extends('layouts.app')
@section('content')
{{-- <div class="row">
@foreach ($offerNew as $offer)
    <div class="col">
        <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="{{$offer->companyLogo}}" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">{{$offer->companyName}}</h5>
            <p class="card-text">{{__('offer.valueProtection')}} : {{__('offer.value', ['rate' => $offer->valeWithProtection])}}</p>
            <p class="card-text">{{__('offer.valueWithoutProtection')}} : {{__('offer.value', ['rate' => $offer->valueWithoutProtection])}}</p>
            <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => $offer->id])}}" class="btn btn-primary">{{__('offer.choose')}}</a>
            </div>
          </div>
    </div>
@endforeach
</div>
{{$offerNew->links()}} --}}
<div class="row">
    <div class="col">
        <button type="button" disabled name="express-delivery" id="express-delivery" class="btn btn-info btn-lg btn-block">Express delivery</button>
        <div class="card-group">
            <div class="card">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="180" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
              <div class="card-body">
                <h5 class="card-title">Cargo parcel company</h5>
                <hr/>
                    <div class="row">
                      <div class="col">
                      <small>with Rs. 100.00 parcel security</small>
                      <h3 class"card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => 1])}}" class="btn btn-block btn-outline-info">select</a>
                      </div>

                      <div class="w-100"><hr/></div>

                      <div class="col">
                      <small>with Rs. 100.00 parcel security</small>
                      <h3 class"card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => 1])}}" class="btn btn-outline-secondary btn-block">select</a>
                      </div>
                      <div class='w-100'><hr/></div>
                      <div class="col text-center">
                      <a href="#" class="btn btn-outline-secondary btn-block">
                          <i class="fa fa-building-o" aria-hidden="true"></i>
                          Local drop off
                      </a>


                      </div>
                      <div class="col text-center">
                       <a href="#" class="btn btn-outline-secondary btn-block">
                      <i class="fa fa-print" aria-hidden="true"></i>
                      printer Required
                      </a>
                      </div>
                      <div class="col text-center">
                       <a href="#" class="btn btn-outline-secondary btn-block">
                          <i class="fa fa-info-circle" aria-hidden="true"></i>
                          More Info
                          </a>
                      </div>
                  </div>
                </div>
            </div>
          </div>
          <hr/>
          <div class="card-group">
            <div class="card">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="180" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
              <div class="card-body">
                <h5 class="card-title">Cargo parcel company</h5>
                <hr/>
                    <div class="row">
                      <div class="col">
                      <small>with Rs. 100.00 parcel security</small>
                      <h3 class"card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => 1])}}" class="btn btn-block btn-outline-info">select</a>
                      </div>

                      <div class="w-100"><hr/></div>

                      <div class="col">
                      <small>with Rs. 100.00 parcel security</small>
                      <h3 class"card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => 1])}}" class="btn btn-outline-secondary btn-block">select</a>
                      </div>
                      <div class='w-100'><hr/></div>
                      <div class="col text-center">
                      <a href="#" class="btn btn-outline-secondary btn-block">
                          <i class="fa fa-building-o" aria-hidden="true"></i>
                          Local drop off
                      </a>


                      </div>
                      <div class="col text-center">
                       <a href="#" class="btn btn-outline-secondary btn-block">
                      <i class="fa fa-print" aria-hidden="true"></i>
                      printer Required
                      </a>
                      </div>
                      <div class="col text-center">
                       <a href="#" class="btn btn-outline-secondary btn-block">
                          <i class="fa fa-info-circle" aria-hidden="true"></i>
                          More Info
                          </a>
                      </div>
                  </div>
                </div>
            </div>
          </div>
    </div>
    <div class="col">
        <button type="button" disabled name="express-delivery" id="express-delivery" class="btn btn-info btn-lg btn-block">Economy delivery</button>
        <div class="card-group">
            <div class="card">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="180" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
              <div class="card-body">
                <h5 class="card-title">Cargo parcel company</h5>
                <hr/>
                    <div class="row">
                      <div class="col">
                      <small>with Rs. 100.00 parcel security</small>
                      <h3 class"card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => 1])}}" class="btn btn-block btn-outline-info">select</a>
                      </div>

                      <div class="w-100"><hr/></div>

                      <div class="col">
                      <small>with Rs. 100.00 parcel security</small>
                      <h3 class"card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => 1])}}" class="btn btn-outline-secondary btn-block">select</a>
                      </div>
                      <div class='w-100'><hr/></div>
                      <div class="col text-center">
                      <a href="#" class="btn btn-outline-secondary btn-block">
                          <i class="fa fa-building-o" aria-hidden="true"></i>
                          Local drop off
                      </a>


                      </div>
                      <div class="col text-center">
                       <a href="#" class="btn btn-outline-secondary btn-block">
                      <i class="fa fa-print" aria-hidden="true"></i>
                      printer Required
                      </a>
                      </div>
                      <div class="col text-center">
                       <a href="#" class="btn btn-outline-secondary btn-block">
                          <i class="fa fa-info-circle" aria-hidden="true"></i>
                          More Info
                          </a>
                      </div>
                  </div>
                </div>
            </div>
          </div>
    </div>
    <div class="col">
        <button type="button" disabled name="express-delivery" id="express-delivery" class="btn btn-info btn-lg btn-block">Super Economy delivery</button>
        <div class="card-group">
            <div class="card">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="180" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
              <div class="card-body">
                <h5 class="card-title">Cargo parcel company</h5>
                <hr/>
                    <div class="row">
                      <div class="col">
                      <small>with Rs. 100.00 parcel security</small>
                      <h3 class"card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => 1])}}" class="btn btn-block btn-outline-info">select</a>
                      </div>

                      <div class="w-100"><hr/></div>

                      <div class="col">
                      <small>with Rs. 100.00 parcel security</small>
                      <h3 class"card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => 1])}}" class="btn btn-outline-secondary btn-block">select</a>
                      </div>
                      <div class='w-100'><hr/></div>
                      <div class="col text-center">
                      <a href="#" class="btn btn-outline-secondary btn-block">
                          <i class="fa fa-building-o" aria-hidden="true"></i>
                          Local drop off
                      </a>


                      </div>
                      <div class="col text-center">
                       <a href="#" class="btn btn-outline-secondary btn-block">
                      <i class="fa fa-print" aria-hidden="true"></i>
                      printer Required
                      </a>
                      </div>
                      <div class="col text-center">
                       <a href="#" class="btn btn-outline-secondary btn-block">
                          <i class="fa fa-info-circle" aria-hidden="true"></i>
                          More Info
                          </a>
                      </div>
                  </div>
                </div>
            </div>
          </div>
          <hr/>
          <div class="card-group">
            <div class="card">
              <svg class="bd-placeholder-img card-img-top" width="100%" height="180" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
              <div class="card-body">
                <h5 class="card-title">Cargo parcel company</h5>
                <hr/>
                    <div class="row">
                      <div class="col">
                      <small>with Rs. 100.00 parcel security</small>
                      <h3 class"card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => 1])}}" class="btn btn-block btn-outline-info">select</a>
                      </div>

                      <div class="w-100"><hr/></div>

                      <div class="col">
                      <small>with Rs. 100.00 parcel security</small>
                      <h3 class"card-text"><b>Rs. 20.00</b></h3>
                      </div>
                      <div class="col">
                          <a href="{{route('statusUpdate', ['status' => 2, 'awb' => $awb, 'selectedOffer' => 1])}}" class="btn btn-outline-secondary btn-block">select</a>
                      </div>
                      <div class='w-100'><hr/></div>
                      <div class="col text-center">
                      <a href="#" class="btn btn-outline-secondary btn-block">
                          <i class="fa fa-building-o" aria-hidden="true"></i>
                          Local drop off
                      </a>


                      </div>
                      <div class="col text-center">
                       <a href="#" class="btn btn-outline-secondary btn-block">
                      <i class="fa fa-print" aria-hidden="true"></i>
                      printer Required
                      </a>
                      </div>
                      <div class="col text-center">
                       <a href="#" class="btn btn-outline-secondary btn-block">
                          <i class="fa fa-info-circle" aria-hidden="true"></i>
                          More Info
                          </a>
                      </div>
                  </div>
                </div>
            </div>
          </div>
    </div>
</div>
<center>
    {{$offerNew->links()}}
</center>
@endsection
{{--end--}}
