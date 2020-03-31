<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AdminUserParcelUpdateModel extends Model
{
    protected $table = 'adminParcelUpdateStatus';
    protected $fillable = ['awb','action','Notice'];
}
