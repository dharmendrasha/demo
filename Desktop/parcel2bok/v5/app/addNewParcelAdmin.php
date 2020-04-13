<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class addNewParcelAdmin extends Model{
    protected $table="AdminCarrierNew";
    protected $fillable = ['carrierName','carrierUrl','tarckingCarrierUrl','carrierLogo','MinStartingRange','MinEndingRange','MinPrice','MidStartingRange','MidEndingRange','MidPrice','MaxStartingRange','MaxEndingRange','MaxPrice'];
}
