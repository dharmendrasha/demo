{{--start--}}
<div class="container">
    @include('flash::message')
    <div class="row">
        <div class="col text-center">
            <h4><b>Insert District</b></h4>
        </div>
        <div class="col">
        <form action="{{route('admin.dynamic.states.conf')}}" method="POST">
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
                  <select class="form-control dynamic" name="state" id="state">
                    <option value='State' selected disabled>State `|^ Please the country first ^|`</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="district" class="sr-only">District</label>
                  <input type="text"
                    class="form-control" name="district" id="district" aria-describedby="helpId" placeholder="District" required>
                  <small id="helpId" class="form-text text-muted">District | saperate the districts by using <code>,</code></small>
                  @error('district')
                  <span class="invalid-feedback text-danger" role="alert">
                      <strong>{{ $message }}</strong>
                  </span>
                  @enderror
                </div>
                <button type="submit" name="" id="" class="btn btn-success btn-lg btn-block">Add -></button>
            </form>
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
       var dependent = $(this).data('dependent');
       var _token = $('input[name="_token"]').val();
       $.ajax({
        url:"{{ route('admin.dynamic.states') }}",
        method:"POST",
        data:{select:select, value:value, _token:_token, dependent:dependent},
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
    });
    </script>
{{--end--}}