<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class userMultipleParcelModel extends Model
{
    protected $table = 'userMultipleParcel';
    protected $fillable = ['awb','totalQuantity','parcelFrom','fromPincode','to','toPincode','productDetails'];
}
