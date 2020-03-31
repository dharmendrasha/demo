{{--start--}}
<form action="{{route('paypalRea')}}" method="POST" enctype="application/x-www-form-urlencoded">
    @csrf
    <!-- Identify your business so that you can collect the payments. -->
<input type="hidden" name="business" value="{{\config('payment.paypal.id')}}">

    <!-- Specify a Buy Now button. -->
    <input type="hidden" name="cmd" value="_xclick">

    <!-- Specify details about the item that buyers will purchase. -->
<input type="hidden" name="item_name" value="{{$allTheuserInfo[0]->awb}}">
<input type="hidden" name="item_number" value="{{$allTheuserInfo['0']->contactPhoneNumber}}">
    <input type="hidden" name="amount" value="{{$allTheOfferInformation[0]->valueWithoutProtection}}">
<input type="hidden" name="currency_code" value="{{\config('payment.paypal.currency')}}">

    <!-- Specify URLs -->
<input type="hidden" name="return" value="{{\config('payment.paypal.returnUrl')}}">
<input type="hidden" name="cancel_return" value="{{\config('payment.paypal.cancelUrl')}}">

    <!-- Display the payment button. -->
    <button type="submit" name="paypal" id="paypal" class="btn btn-primary btn-lg btn-block">paypal</button>
</form>
{{--end--}}
