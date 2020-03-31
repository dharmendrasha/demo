{{--start--}}
    @extends('layouts.app')
    @section('content')
<div class="container">
<form action="{{route('parcelPostStore')}}" method="POST">
            @csrf
        <input type="text" name="totalQuantity" id="" value="{{$theTotal-1}}" hidden>
        <div class="row">
            <div class="col">
                <div class="form-group">
                  <label for="parcelFrom">{{__('welcome.from')}}</label>
                  <select class="form-control" name="parcelFrom" id="parcelFrom">
                    <option selected disabled>{{__('welcome.selectState')}}</option>
                    <option>Bikaner</option>
                    <option>Rajasthan</option>
                    <option>haryana</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="fromPincode" class="sr-only">{{__('welcome.pincode')}}</label>
                  <input type="number"
                    class="form-control" name="fromPincode" id="fromPincode" aria-describedby="fromPinCode" placeholder="{{__('welcome.pincode')}}">
                  <small id="fromPinCode" class="form-text text-muted sr-only">{{__('welcome.pincode')}}</small>
                </div>
            </div>
            <div class="col">
                <div class="form-group">
                  <label for="to">{{__('welcome.to')}}</label>
                  <select class="form-control" name="to" id="to">
                    <option selected disabled>{{__('welcome.selectState')}}</option>
                    <option>Bikaner</option>
                    <option>Ajmer</option>
                    <option>jaipur</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="to" class="sr-only">{{__('welcome.to')}} </label>
                  <input type="number"
                    class="form-control" name="toPincode" id="to" aria-describedby="helpId" placeholder="{{__('welcome.to')}}">
                  <small id="helpId" class="form-text text-muted sr-only">{{__('welcome.to')}}</small>
                </div>
            </div>
        </div>
        <hr/>

                @for ($i = 1; $i < $theTotal; $i++)
                <div class="row">
                <p>Product id: <b>{{$i}}</b>/-</p>
                <br/>
                <input type="number" hidden name="productId[]" value="{{$i}}"/>
                    <div class="col">
                        <div class="form-group">
                        <label for="weight" class="sr-only">{{__('multiplePar.weight')}}</label>
                          <input type="number"
                            class="form-control" name="weight[]" id="weight"  aria-describedby="qWeight" placeholder="{{__('multiplePar.weight')}}">
                          <small id="qWeight" class="form-text text-muted sr-only">{{__('multiplePar.weight')}}</small>
                        </div>
                      </div>
                      <div class="col">
                          <div class="form-group">
                          <label for="width" class="sr-only">{{__('multiplePar.width')}}</label>
                            <input type="number"
                              class="form-control" name="width[]" id="width"  aria-describedby="qWidth" placeholder="{{__('multiplePar.width')}}">
                            <small id="qWidth" class="form-text text-muted sr-only">{{__('multiplePar.width')}}</small>
                          </div>
                      </div>
                      <div class="col">
                          <div class="form-group">
                          <label for="height" class="sr-only">{{__('multiplePar.height')}}</label>
                            <input type="number"
                              class="form-control" name="height[]" id="height"  aria-describedby="heightpar" placeholder="{{__('multiplePar.height')}}">
                            <small id="heightpar" class="form-text text-muted sr-only">{{__('multiplePar.height')}}</small>
                          </div>
                      </div>
                      <div class="col">
                          <div class="form-group">
                          <label for="legth" class="sr-only">{{__('multiplePar.length')}}</label>
                            <input type="number"
                              class="form-control" name="length[]" id="legth"  aria-describedby="parcellength" placeholder="{{__('multiplePar.length')}}">
                            <small id="parcellength" class="form-text text-muted sr-only">{{__('multiplePar.length')}}</small>
                          </div>
                      </div>
                </div>
                <hr/>
                @endfor
        </div>
    <button type="submit" name="submit" id="submit" class="btn btn-primary btn-lg btn-block">{{__('welcome.submit')}}</button>
        </form>
    </div>
    @endsection
{{--end--}}
