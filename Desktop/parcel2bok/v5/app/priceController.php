<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class priceController extends Model
{
    protected $table = 'carrierPriceManage';
    protected $fillable = ['carrierId','carrierName','carrierArea','AreaPincodes','weightMeasurements','priceByArea'];
}
