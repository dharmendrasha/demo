@if(is_array($errors))
    @foreach($errors as $key => $col)
        @if($errors->has($col.$key))
            @foreach($errors->get($col.$key) as $message)
                <label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {{$message}}</label><br/>
            @endforeach
        @endif
    @endforeach
@else
    @if($errors->has($errors))
        @foreach($errors->get($errors) as $message)
            <label class="control-label" for="inputError"><i class="fa fa-times-circle-o"></i> {{$message}}</label><br/>
        @endforeach
    @endif
@endif