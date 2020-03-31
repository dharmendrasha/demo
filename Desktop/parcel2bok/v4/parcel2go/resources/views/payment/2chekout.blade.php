{{--start--}}
<!-- credit card form -->
<form id="paymentFrm" method="post" action="paymentSubmit.php">
    <div>
        <label>NAME</label>
        <input type="text" name="name" id="name" placeholder="Enter name" required autofocus>
    </div>
    <div>
        <label>EMAIL</label>
        <input type="email" name="email" id="email" placeholder="Enter email" required>
    </div>
    <div>
        <label>CARD NUMBER</label>
        <input type="text" name="card_num" id="card_num" placeholder="Enter card number" autocomplete="off" required>
    </div>
    <div>
        <label><span>EXPIRY DATE</span></label>
        <input type="number" name="exp_month" id="exp_month" placeholder="MM" required>
        <input type="number" name="exp_year" id="exp_year" placeholder="YY" required>
    </div>
    <div>
        <label>CVV</label>
        <input type="number" name="cvv" id="cvv" autocomplete="off" required>
    </div>
    
    <!-- hidden token input -->
    <input id="token" name="token" type="hidden" value="">
    
    <!-- submit button -->
    <input type="submit" class="btn btn-success" value="Submit Payment">
</form>
{{--end--}}