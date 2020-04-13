{{--start--}}
this will show all the user info <br/>
{{print_r($user)}}

<br/>
<button type="button" name="" id="" onclick="window.location.href = '{{ url()->previous() }}'" class="btn btn-primary btn-lg btn-block"><- Go back</button>
{{--end--}}