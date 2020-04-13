{{--start--}}
@extends('layouts.app')
@section('content')
<form method="POST" class="container" action="{{route('userContactSave',['status' => $status, 'awb'=>$awb])}}">
    @csrf
    <div class="row">
        <div class="col">
            <p class="text-center">{{__('contactinfo.contactInfo')}}</p>
        </div>
        <div class="w-100"></div>
        <div class="col">
            <div class="form-group">
            <label for="contactPhoneNumber" class="sr-only">{{__('contactinfo.contactPhoneNumber')}}</label>
              <input type="number"
                class="form-control @error('contactPhoneNumber') is-invalid @enderror" name="contactPhoneNumber" id="contactPhoneNumber" aria-describedby="helpId" placeholder="{{__('contactinfo.contactPhoneNumber')}}">
              <small id="helpId" class="form-text text-muted sr-only">{{__('contactinfo.contactPhoneNumber')}}</small>
              @error('contactPhoneNumber')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror
            </div>
        </div>
        <div class="col">
            <div class="form-group">
            <label for="contactEmail" class="sr-only">{{__('contactinfo.contactEmail')}}</label>
              <input type="email"
                class="form-control @error('contactEmail') is-invalid @enderror" name="contactEmail" id="contactEmail" aria-describedby="helpId" placeholder="{{__('contactinfo.contactEmail')}}">
              <small id="helpId" class="form-text text-muted sr-only">{{__('contactinfo.contactEmail')}}</small>
              @error('contactEmail')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror
            </div>
        </div>

        <div class="w-100"></div>
        <div class="col">
           <div class="form-group">
           <label for="contactTimigFrom" class="">{{__('contactinfo.contactTimingFrom')}}</label>
             <input type="time"
               class="form-control @error('contactTimingFrom') is-invalid @enderror" name="contactTimingFrom" id="contactTimigFrom" aria-describedby="contctTimingFrom" placeholder="{{__('contactinfo.contactTimingFrom')}}">
             <small id="contctTimingFrom" class="form-text text-muted sr-only">{{__('contactinfo.contactTimingFrom')}}</small>
             @error('contactTimingFrom')
             <span class="invalid-feedback" role="alert">
                 <strong>{{ $message }}</strong>
             </span>
         @enderror
           </div>
        </div>
        <div class="col">
            <div class="form-group">
            <label for="contactTimingTo" class="">{{__('contactinfo.contactTimingTo')}}</label>
              <input type="time"
                class="form-control @error('contactTimingTo') is-invalid @enderror" name="contactTimingTo" id="contactTimingTo" aria-describedby="contactTimingT" placeholder="{{__('contactinfo.contactTimingTo')}}">
              <small id="contactTimingT" class="form-text text-muted sr-only">{{__('contactinfo.contactTimingTo')}}</small>
              @error('contactTimingTo')
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
          @enderror
            </div>
        </div>
        <div class="w-100"></div>
        <div class="col">
        <button type="submit" name="submit" id="submit" class="btn btn-success btn-lg btn-block">{{__('contactinfo.submit')}}</button>
        </div>
    </div>
</form>
@endsection
{{--end--}}
