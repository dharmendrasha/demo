<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class carrierServiceListModel extends Model
{
    protected $table = 'carrierServiceList';
    protected $fillable = ['carrierId','carrierName','country','state','district','pin'];
}
