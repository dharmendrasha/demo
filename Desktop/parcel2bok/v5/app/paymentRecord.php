<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class paymentRecord extends Model
{
    protected $table = 'paymentRecord';
    protected $fillable = ['awb','paymentMerchant','paymentStatus','paymentToken','paymentId','payerId','extraInfo'];
}
