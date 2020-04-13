<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class userInfoModel extends Model
{
    protected $table = 'userPickUPandDrop';
    protected $fillable = ['awb','pickUpaddressOne','pickUpAddresstwo','pickUpCity','pickupDistict','pickUpState','pickUpCountry','pickUpPin','dropaddressOne','dropAddresstwo','dropCity','dropDistict','dropState','dropState','dropCountry','dropPin'];
}
