{{--start--}}
<div class="container">
    @include('flash::message')
    <div class="row">
        <div class="col">
        <form class="" action="{{route('admin.area.pin.cnf')}}" method="POST">
            @csrf
            <div class="form-group">
              <label for="country" class="sr-only">Select Countries</label>
              @error('country')
              <span class="invalid-feedback text-danger" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
              @enderror
              <select class="form-control dynamic" name="country" id="country" data-dependent="state">
                <option selected disabled>Select country</option>
                @foreach ($c as $a)
              <option value="{{$a->country}}">{{$a->country}}</option>
                @endforeach
              </select>
            </div>
            <div class="form-group">
                <label for="state" class="sr-only">state</label>
                @error('state')
                <span class="invalid-feedback text-danger" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
                <select class="form-control dynamic" name="state" id="state" data-dependent="district">
                  <option value='State' selected disabled>State `|^ Please the country first ^|`</option>
                </select>
            </div>
            <div class="form-group">
                <label for="district" class="sr-only">state</label>
                @error('district')
                <span class="invalid-feedback text-danger" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
                <select class="form-control dynamic" name="district" id="district">
                  <option value='district' selected disabled>District `|^ Please the State first ^|`</option>
                </select>
            </div>
            <div class="form-group">
              <label for="pincode" class="sr-only">Add pincode</label>
              <input type="text"
                class="form-control" name="pincode" id="pincode" aria-describedby="pincode" placeholder="Add pincode">
              <small id="pincode" class="form-text text-muted">Pincode saperate the pincodes by <code>,</code> </small>
              @error('pincode')
              <span class="invalid-feedback text-danger" role="alert">
                  <strong>{{ $message }}</strong>
              </span>
              @enderror
            </div>
            <button type="submit" name="" id="" class="btn btn-warning btn-lg btn-block">Add</button>
           </form>
           </div>
        </div>
    </div>
</div>
{{--custom script --}}
<script>
    $(document).ready(function(){
     $('.dynamic').change(function(){
      if($(this).val() != '')
      {
       var select = $(this).attr("id");
       var value = $(this).val();
       var country = $('#country').val();
       var dependent = $(this).data('dependent');
       var _token = $('input[name="_token"]').val();
       $.ajax({
        url:"{{ route('admin.dynamic.states') }}",
        method:"POST",
        data:{select:select, value:value, _token:_token, dependent:dependent, country:country},
        success:function(result)
        {
         $('#'+dependent).html(result);

        }

       })
      }
     });
     $('#country').change(function(){
      $('#state').val('');
     });

     $('#state').change(function(){
        $('#district').val('');
     });
    });
    </script>

{{--end--}}
