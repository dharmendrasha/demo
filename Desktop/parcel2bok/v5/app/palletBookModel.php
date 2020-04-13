<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class palletBookModel extends Model
{
    protected $table = 'palletBook';
    protected $fillable = ['palletFrom','palletFromPincode', 'palletTo', 'palletToPincode'];
}
