{{--order--multiple-parcels--}}
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#multiplePar" data-whatever="@getbootstrap">{{__('multiplePar.multipleParcels')}}</button>

<div class="modal fade" id="multiplePar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">{{__('multiplePar.quantity')}}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form method="get" action="{{route('parcelPost')}}">
        @csrf
          <div class="form-group">
            <label for="recipient-name" class="col-form-label sr-only">{{__('multiplePar.quantity')}}:</label>
            <input type="number" maxlength="20" name="parcelQuantity" value="{{old('parcelQuantity')}}" class="form-control @error('parcelQuantity') is-invalid @enderror" placeholder="{{__('multiplePar.quantity')}}" id="recipient-name" required>
            @error('parcelQuantity')
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror
        </div>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn btn-danger" data-dismiss="modal">{{__('multiplePar.close')}}</button>
      <button type="submit" class="btn btn-primary">{{__('multiplePar.book')}}</button>
      </div>
    </form>
    </div>
  </div>
</div>
{{--order-multiple-parcels--end--}}
