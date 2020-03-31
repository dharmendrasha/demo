<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class paypalPaymentModel extends Model
{
    protected $table = 'paymentRequest';
    protected $fillable = ['awb','paymentToken','paymentCommand','paymentMerchant','paymentAmount','currency'];
}
